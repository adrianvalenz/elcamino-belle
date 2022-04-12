FactoryBot.define do
  factory :client do
    name { Faker::Name.name }
    phone_number { Faker::PhoneNumber.phone_number }
    street { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zipcode { Faker::Address.zip_code }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end
