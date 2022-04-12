# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#

puts "Creating 10 random clients"

10.times do
  FactoryBot.create(:client)
end

puts "10 clients created..."

puts "Creating a technician account"

t = Technician.new(
  email: "mirabel@encanto.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Mirabel",
  last_name: "Madrigal"
)

if t.save
  puts "Login credentials; Email: #{t.email}, Password: #{t.password}"
else
  puts "Failed to save technician account. Errors: #{t.errors.full_messages}"
end
