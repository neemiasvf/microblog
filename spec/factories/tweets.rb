FactoryBot.define do
  factory :tweet do
    user
    content { Faker::Quote.yoda }
  end
end
