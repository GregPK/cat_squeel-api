require 'unit_spec_helper'

describe User do
  describe 'for new user' do
    it 'should generate a new token on instantiation' do
      user_new = User.new { |u| u.email = 'user1@example.com' }
      expect(user_new.authentication_token).not_to be_empty
    end
  end
end
