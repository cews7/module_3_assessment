require 'rails_helper'

describe "Store", type: :model do
  it "gives stores within given radius" do
    VCR.use_cassette("store") do
      stores  = Stores.find_stores_by_zip("80202")
      store = stores.first

      expect(stores.count).to eq 10
      expect(store).to respond_to(:distance)
      expect(store).to respond_to(:name)
      expect(store).to respond_to(:type)
      expect(store).to respond_to(:phone)
      expect(store).to respond_to(:city)
      expect(store.distance).to eq 3.45
      expect(store.city).to eq "DENVER"
      expect(store.name).to eq "BEST BUY MOBILE - CHERRY CREEK SHOPPING CENTER"
      expect(store.type).to eq "Mobile SAS"
      expect(store.phone).to eq "303-270-9189"
    end
  end
end
