FactoryGirl.define do
  factory :campaign do
    name Faker::Lorem.word
    image_url "www.imgur.com/359735"
    description Faker::Lorem.sentence
    goal 15000
    organization_profile
  end

end
