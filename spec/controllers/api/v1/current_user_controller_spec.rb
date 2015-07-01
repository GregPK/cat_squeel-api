require 'rails_helper'

RSpec.describe Api::V1::CurrentUserController, type: :controller do
  login_user

  it "should have a current_user" do
    expect(subject.current_user).to_not be_nil
  end

end
