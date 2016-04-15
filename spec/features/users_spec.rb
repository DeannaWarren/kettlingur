require 'rails_helper'

RSpec.feature "User", type: :feature, js: true do

  describe "who is signed out" do
    it "can create an account and be signed in" do
      visit root_path
      click_link("Sign Up")
      fill_in "Username", with: "username"
      fill_in "Email", with: "user@email.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_button("Create Your Account")
      expect(page).to have_content("Welcome, user@email.com!")
    end
    it "cannot see the sign out option" do
      visit root_path
      expect(page).to_not have_button("Sign Out")
    end
    it "can sign in" do
      user_details = {
        username: "username",
        email: "user@email.com",
        password: "password"
      }
      User.create!(user_details)
      visit root_path
      click_link("Sign In")
      fill_in "Email", with: "user@email.com"
      fill_in "Password", with: "password"
      click_on("Log in")
      expect(page).to have_content("Welcome, user@email.com!")
    end
  end

  describe "who is signed in" do
    # it "can sign out" do
    #   user_details = {
    #     username: "username",
    #     email: "user@email.com",
    #     password: "password"
    #   }
    #   User.create!(user_details)
    #   visit root_path
    #   click_link("Sign In")
    #   fill_in "Email", with: "user@email.com"
    #   fill_in "Password", with: "password"
    #   click_on("Log in")
    #   click_on("Sign Out")
    #   expect(page).to have_content("Sign In")
    # end
  end

end
