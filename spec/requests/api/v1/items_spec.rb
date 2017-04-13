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

    get "api/v1/items/#{@item.id}"

    expect(status).to eq 200
    expect(@item.id).to eq 1
    expect(@item.name).to be_a String
    expect(@item.description).to be_a String
    expect(@item.image_url).to be_a String
  end

  it "create single item" do

    post api_v1_items_path(id: 1, name: "name", description: "description", image_url: "image_url")

    expect(status).to eq 201
  end

  it "delete single item" do
    @item = create(:item)

    delete api_v1_item_path(@item)

    expect(status).to eq 204
  end
end
