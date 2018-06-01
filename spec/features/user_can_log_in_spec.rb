require 'rails_helper'

describe "user can log in" do
  context "visits root and clicks sign in" do
    it "enters info, clicks log in, brought to dashboard" do
      user = create(:user)

      visit root_path

      click_on("Sign in")

      expect(current_path).to eq("/login")

      fill_in("Username", with: "Billy")
      fill_in("Password", with: "password")
      click_on("Log in")

      expect(current_path).to eq("/users/1")
      expect(page).to have_content("Welcome to Blogger Billy")
    end
  end
end
