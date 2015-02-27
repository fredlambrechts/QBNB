# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do
  pw = "12345678"
  u = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email,
    password: pw,
    password_confirmation: pw)
  u.save!(:validate => false)
end


20.times do
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

20.times do
  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-03-12",
    checkout: "2015-03-14",
    status: Booking::STATUS.sample
    )
end
