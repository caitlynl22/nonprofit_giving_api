FactoryGirl.define do
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    sequence :email do |n|
      "person#{n}@example.com"
    end
    password Faker::Lorem.word
    token "a47a8e54b11c4de5a4a351734c80a14a"
    image_url "http://imgur.com/3489274"
    bio Faker::Lorem.sentence
  end
end



