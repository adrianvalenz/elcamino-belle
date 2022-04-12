FactoryBot.define do
  factory :appointment do
    date { Faker::Date.forward(days: 1) }
    service { "Pedidcure" }
    technician
    client
  end
end
