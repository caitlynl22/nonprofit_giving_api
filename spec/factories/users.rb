FactoryGirl.define do
  factory :user do
    sequence :first_name do |n|
      "firstname#{n}"
    end
    sequence :last_name do |n|
      "lastname#{n}"
    end
    sequence :email do |n|
      "person#{n}@example.com"
    end
    password Faker::Lorem.word
    token "a47a8e54b11c4de5a4a351734c80a14a"
    image_url "http://imgur.com/3489274"
    bio Faker::Lorem.sentence
  end
end



