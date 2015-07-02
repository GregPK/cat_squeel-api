require 'rails_helper'

RSpec.describe Api::V1::CurrentUserController, type: :controller do
  login_user

  it 'should have a current_user' do
    expect(subject.current_user).to_not be_nil
  end

  it 'should return data about logged in user' do
    get :show, {}, xhr: true

    expect(response.status).to eq 200

    body = JSON.parse(response.body)
    expect(body['email']).to eq subject.current_user.email
    expect(body['id']).to eq subject.current_user.id
  end
end
