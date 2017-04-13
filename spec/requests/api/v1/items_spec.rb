require 'rails_helper'


describe "Items API" do
  before do
    @item = Item.create!(name: "sample", description: "sampler", image_url: "waeoijf")
  end
  it "shows expected results in index" do
    get api_v1_items_items_path
    expect(status).to eq(200)

    expect(@item.count).to eq 1
  end
end
