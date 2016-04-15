require 'rails_helper'

RSpec.feature "User", type: :feature, js: true do

  describe "who is signed out or a guest" do
    it "can sign in with previous account" do
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
      expect(page).to have_content("Welcome, fluffyBunny!")
    end
    it "can create an account and be signed in" do
      visit root_path
      click_link("Sign Up")
      fill_in "Username", with: "fluffyBunny"
      fill_in "Email", with: "user@email.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_button("Create Your Account")
      expect(page).to have_content("Welcome, fluffyBunny!")
    end
    it "cannot create an account without username" do
      visit root_path
      click_link("Sign Up")
      fill_in "Email", with: "user@email.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_button("Create Your Account")
      expect(page).to have_content("Username can't be blank")
    end
    it "cannot see the sign out option" do
      visit root_path
      expect(page).to_not have_button("Sign Out")
    end
    it "cannot see the Acount Page option" do
      visit root_path
      expect(page).to_not have_content("Your Account")
    end
    it "cannot see option to Edit Account" do
      visit root_path
      expect(page).to_not have_content("Edit Account")
    end
  end

  describe "who is signed in" do
    it "can sign out" do
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
      click_on("Sign Out")
      expect(page).to have_content("Sign In")
    end
    it "cannot see sign in option" do
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
      expect(page).to_not have_content("Sign In")
    end
    it "cannot see sign up option" do
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
      expect(page).to_not have_content("Sign Up")
    end
  end

end
