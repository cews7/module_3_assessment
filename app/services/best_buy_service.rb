class BestBuyService
  def self.find_stores_by_zip(zip)
    response = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=city,storeType,distance,longName,phone&pageSize=10&apiKey=#{ENV['BEST_BUY_KEY']}")
    JSON.parse(response.body, symbolize_names: true)[:stores]
  end
end
