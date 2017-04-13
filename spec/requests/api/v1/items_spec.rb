require 'rails_helper'

describe "Items API" do
  it "shows expected results in index" do
    @items = create_list(:item, 3)

    get api_v1_items_path

    expect(status).to eq(200)
    expect(@items.count).to eq 3
  end

  it "shows a single item" do
    @item = create(:item)
    binding.pry
    get "api/v1/items/#{@item.id}"

    expect(status).to eq 200
    expect(@item.id).to eq 1
    expect(@)
  end
end
