FactoryBot.define do
  factory :plan do
    country_id { 2 }
    place { "東京" }
    association :user 
  end
end
