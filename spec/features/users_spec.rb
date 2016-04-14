require 'rails_helper'

RSpec.feature "Users:", type: :feature, js: true do

  describe "user without an account" do
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
  end

  describe "user has an account" do
    it "can do stuff"
  end

end
