FactoryBot.define do
  factory :memory do
    title {Faker::Lorem.sentence}
    start_date { 2020-01-01 }
    end_date { 2020-01-01 }
    country_id { 2 }
    place { "東京" }
    text {Faker::Lorem.sentence}
    association :user

    after(:build) do |memory|
      memory.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
