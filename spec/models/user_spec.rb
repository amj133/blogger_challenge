require 'rails_helper'

describe User do
  describe "validations" do
    it { should validate_presence_of :username }
    it { should validate_uniqueness_of :username }
    it { should validate_presence_of :password }
  end

  describe "relationships" do
    it { should have_many(:articles) }
    it { should have_many(:comments) }
  end
end
