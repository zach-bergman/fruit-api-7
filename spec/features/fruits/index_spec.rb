require "rails_helper"

RSpec.describe "Fruits Search Results Page", type: :feature do
  describe "User Story 1 - Basic Search Results" do
    it "shows a list of fruits that match the search term", :vcr do
      visit root_path

      fill_in :search, with: "banana"
      click_button "Search"

      expect(current_path).to eq(fruits_path)

      expect(page).to have_content("Banana")
      expect(page).to have_content("Musa")
      expect(page).to have_content("Musaceae")
      expect(page).to have_content("Zingiberales")
      expect(page).to have_content("Calories: 96")
      expect(page).to have_content("Fat: 0.2")
      expect(page).to have_content("Sugar: 17.2")
      expect(page).to have_content("Carbohydrates: 22.0")
      expect(page).to have_content("Protein: 1.0")
    end
  end
end