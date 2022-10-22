FactoryBot.define do
  factory :input_form do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
  end
end
