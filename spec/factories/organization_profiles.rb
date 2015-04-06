FactoryGirl.define do
  factory :organization_profile do
    name Faker::Company.name
    mission Faker::Lorem.sentence
    description Faker::Lorem.sentence
    image_url "http://imgur.com/32428732"
    website Faker::Internet.url
    address Faker::Address.street_address
    contact Faker::Internet.email
    ein "09-1839489"
    organization
  end
end
