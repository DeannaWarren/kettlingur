require 'rails_helper'

RSpec.feature "Cats", type: :feature, js: :true do
  context "when being created" do
    it "can be created without breeding" do
        user_details = {
          username: "fluffyBunny",
          email: "user@email.com",
          password: "password"
        }
        User.create!(user_details)
        visit root_path
        click_link("Sign In")
        fill_in "Email", with: "user@email.com"
        fill_in "Password", with: "password"
        click_on("Log in")
        visit new_cat_path
        click_on("MAKE A NEW KITTY")
        expect(page).to have_content("Unnamed")
    end
    # it "can be created through breeding"
  end
  context "after creation" do
    it "displays appropriate datatype/value for coat color" do
      user_details = {
        username: "fluffyBunny",
        email: "user@email.com",
        password: "password"
      }
      User.create!(user_details)
      visit root_path
      click_link("Sign In")
      fill_in "Email", with: "user@email.com"
      fill_in "Password", with: "password"
      click_on("Log in")
      visit new_cat_path
      click_on("MAKE A NEW KITTY")
      expect(page).to have_content("Coat Color: Red")
      # this can use || to list possible colors when expanded
    end
    it "displays appropriate value for marking color" do
      user_details = {
        username: "fluffyBunny",
        email: "user@email.com",
        password: "password"
      }
      User.create!(user_details)
      visit root_path
      click_link("Sign In")
      fill_in "Email", with: "user@email.com"
      fill_in "Password", with: "password"
      click_on("Log in")
      visit new_cat_path
      click_on("MAKE A NEW KITTY")
      expect(page).to have_content("Marking Color: Red")
      # this can use || to list possible colors when expanded
    end
    it "displays appropriate datatype/value for coat pattern" do
      user_details = {
        username: "fluffyBunny",
        email: "user@email.com",
        password: "password"
      }
      User.create!(user_details)
      visit root_path
      click_link("Sign In")
      fill_in "Email", with: "user@email.com"
      fill_in "Password", with: "password"
      click_on("Log in")
      visit new_cat_path
      click_on("MAKE A NEW KITTY")
      expect(page).to have_content("Coat Pattern: Basic")
      # this can use || to list possible patterns when expanded
    end
    it "displays appropriate datatype/value for marking pattern" do
      user_details = {
        username: "fluffyBunny",
        email: "user@email.com",
        password: "password"
      }
      User.create!(user_details)
      visit root_path
      click_link("Sign In")
      fill_in "Email", with: "user@email.com"
      fill_in "Password", with: "password"
      click_on("Log in")
      visit new_cat_path
      click_on("MAKE A NEW KITTY")
      expect(page).to have_content("Marking Pattern: Basic")
      # this can use || to list possible patterns when expanded
    end
  end
end
