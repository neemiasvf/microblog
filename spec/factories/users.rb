FactoryBot.define do
  factory :user do
    full_name { Faker::Name.unique.name }
    email { Faker::Internet.unique.email }
    password { '12345678' }
  end
end
