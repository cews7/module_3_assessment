require 'rails_helper'

describe "As a User" do
  it "I can find stores within 25 mile radius using zip" do
    # When I visit "/"
    visit '/'

    # And I fill in a search box with "80202" and click "search"
    fill_in('search', :with => '80202')
    click_on "search"

    # Then my current path should be "/search" (ignoring params)
    expect(current_path).to eq "/search"

    # And I should see stores within 25 miles of 80202
    expect(page).to have_content("DENVER")
    expect(page).to have_content("5.59")
    expect(page).to have_content("303-758-5805")
    expect(page).to have_content("Big box")
    expect(page).to have_content("LAKEWOOD")
    expect(page).to have_content("WESTMINSTER")
    expect(page).to have_content("AURORA")
    expecT(page).to have_content("16 Total Stores")
    expect([:stores].count).to eq 10
    # And I should see a message that says "16 Total Stores"
    # And I should see exactly 10 results
    # And I should see the long name, city, distance, phone number and store type for each of the 10 results

  end
end
