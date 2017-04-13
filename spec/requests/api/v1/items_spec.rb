require 'rails_helper'

describe "Items API" do
  before do
    @items = create_list(:item, 3)
  end
  it "shows expected results in index" do
    get api_v1_items_path
    expect(status).to eq(200)

    expect(@items.count).to eq 3
  end
end
