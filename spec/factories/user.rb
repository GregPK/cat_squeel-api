FactoryGirl.define do
  factory :user do
    email do Faker::Internet.email end
    password 'test1234'
    # confirmed_at Faker::Date.between(2.days.ago, Date.today)
    authentication_token Devise.friendly_token
  end
end
