require 'test_helper'

class UserTest < ActiveSupport::TestCase
  let(:user_new)   { User.new{|u| u.email = 'user1@example.com'} }

  describe "for new user" do
    it "should generate a new token on instantiation" do
      user_new.authentication_token.wont_be_empty
    end
  end
end
