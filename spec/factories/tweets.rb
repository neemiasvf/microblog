FactoryBot.define do
  factory :tweet do
    user
    content { Faker::Quote.yoda.truncate(280) }
  end
end
