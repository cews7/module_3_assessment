require 'rails_helper'

describe "As a User" do
  it "I can find stores within 25 mile radius using zip" do
    VCR.use_cassette("results_by_zip") do
      visit '/'

      fill_in('search', :with => '80202')
      click_on "search"

      expect(current_path).to eq "/search"

      expect(page).to have_content("DENVER")
      expect(page).to have_content("5.59")
      expect(page).to have_content("303-758-5805")
      expect(page).to have_content("Big Box")
      expect(page).to have_content("LAKEWOOD")
      expect(page).to have_content("WESTMINSTER")
      expect(page).to have_content("AURORA")
      expect(page).to have_content("16 Total Stores")

    end
  end
end
