# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times do |t|
  pw = "Naike1980"
  u = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "#{t}thisisastring@gmail.com",
    password: pw,
    password_confirmation: pw)
  u.save!(:validate => false)
end


40.times do
  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: Faker::Address.street_name,
    address_number: rand(500),
    address_city: Faker::Address.city,
    address_country: Faker::Address.country,
    address_zip: Faker::Address.zip,
    rental_type: Rental::RENTAL_TYPE.sample,
    number_of_sleeps: rand(20),
    price_per_night: rand(30..200),
    description: Faker::Lorem.paragraph(2))
end