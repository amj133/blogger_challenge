require 'rails_helper'

describe Article do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end

  describe "relationships" do
    it { should belong_to(:user) }
    it { should have_many(:comments) }
  end
end
