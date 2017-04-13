FactoryGirl.define do
  factory :item do
    name { Faker::Name.name }
    description { Faker::ChuckNorris.fact }
    image_url { Faker::Avatar.image }
  end
end
