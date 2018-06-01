require 'rails_helper'

describe "user can post an article" do
  context "visits article/new and fills out info" do
    it "clicks submit and is brought to dashboard with new article displayed" do
      user = create(:user)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit "/users/1"
      click_on "Post article"

      expect(current_path).to eq("/articles/new")

      fill_in("Title", with: "Dinosaurs")
      fill_in("Body", with: "Are awesome")
      click_on("Post article")

      expect(current_path).to eq("/users/1")
      expect(page).to have_content("Dinosaurs")
      expect(page).to have_content("Are awesome")
    end
  end
end
