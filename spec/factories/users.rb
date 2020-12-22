FactoryBot.define do
  factory :user do
    nickname { "travel" }
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6, mix_case: true)
    password {password}
    password_confirmation {password}
  end
end
