require 'faker'

FactoryGirl.define do
  factory :user do
    name "Diana"
    username "Diana1"
    email "diana@ex.com"
    password "password"
    password_confirmation "password"

    factory :faker_user do
      name { Faker::Name.name }
      username { Faker::Internet.user_name }
      email { Faker::Internet.email }
    end

  end
end
