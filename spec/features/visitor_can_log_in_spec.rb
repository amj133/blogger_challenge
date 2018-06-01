require 'rails_helper'

describe "visitor can register" do
  context "visits root and clicks register" do
    it "fills out info, clicks register, and is brought to dashboard" do
      visit root_path

      click_on("Register")

      expect(current_path).to eq("/register")

      fill_in("Username", with: "billy")
      fill_in("Password", with: "password")
      click_on("Register")

      expect(current_path).to eq("/users/1")
      expect(page).to have_content("Welcome to Blogger billy")
      expect(User.last.username).to eq("billy")
    end
  end
end
