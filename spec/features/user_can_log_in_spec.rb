require 'rails_helper'

describe "user can log in" do
  context "visits root" do
    it "clicks on log in" do
        create(:user)

        visit "/"
        click_on("Sign in")

        expect(current_path).to eq("/login")

        fill_in("username", with: "billy")
        fill_in("password", with: "password")
        click_button("Sign in")

        expect(current_path).to eq("/users/billy")
    end
  end
end
