FactoryGirl.define do
  factory :organization do
    sequence :org_name do |n|
    "organization#{n}"
    end
    sequence :org_email do |n|
    "person#{n}@example.com"
    end
    password Faker::Lorem.word
    token "sj83jie73hrue78493jhd793jiw7jikhh"
  end
end
