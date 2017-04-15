class Stores
  attr_reader :name, :city, :distance, :phone, :type
  def initialize(attrs = {})
    @name     = attrs[:longName]
    @city     = attrs[:city]
    @phone    = attrs[:phone]
    @distance = attrs[:distance]
    @type     = attrs[:storeType]
  end

  def self.find_stores_by_zip(zip)
    BestBuyService.find_stores_by_zip(zip).map do |raw_store|
      Stores.new(raw_store)
    end
  end
end
