require 'rails_helper'

describe "Best Buy Service" do
  it "returns the desired number of results" do
    VCR.use_cassette("return request results") do
      @stores = BestBuyService.find_stores_by_zip("80202")
      @store = @stores.first

      expect(@stores.count).to eq 10
      expect(@store).to have_key(:longName)
      expect(@store).to have_key(:distance)
      expect(@store).to have_key(:phone)
      expect(@store).to have_key(:city)
      expect(@store).to have_key(:storeType)
    end
  end
end
