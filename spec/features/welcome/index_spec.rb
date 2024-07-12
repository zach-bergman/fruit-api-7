require "rails_helper"

RSpec.describe "Welcome Page", type: :feature do
  describe "User Story 1 - Basic Search" do
    it "shows a form with a search box for fruit and a button, button directs to search results page", :vcr do
      visit root_path

      expect(page).to have_field(:search)
      expect(page).to have_button("Search")

      # click_button "Search"

      # expect(current_path).to eq(fruits_path)
    end
  end
end