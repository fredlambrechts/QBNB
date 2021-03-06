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

  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Madison Avenue",
    address_number: "1039",
    address_city: "New York City",
    address_country: "USA",
    address_zip: 1039,
    rental_type: "apartment",
    number_of_sleeps: 2,
    price_per_night: 100,
    description: "Bright one bedroom apartment with balcony in hip Lower Eastside
    of Manhattan. Steps away from great restaurants, galleries, and shops. Walking
    distance to Chinatown, East Village, Little Italy, Nolita & Soho. F train stops
    1 block away, B/D train 3 blocks away. Many bus stops nearby.
    You will have the apartment all to yourself. It's fully furnished with everything
    you need for the comfort of home while in the middle of a vital downtown scene.
    Hardwood floor, impeccably clean and compact. Japanese style futon bed.
    Air conditioners in both living room and bedroom. Free WiFi. Elevator.
    Laundry in the same building. But please note I do not have a TV.")


  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Elizabeth Street",
    address_number: "254",
    address_city: "New York City",
    address_country: "USA",
    address_zip: "1012",
    rental_type: "apartment",
    number_of_sleeps: "2",
    price_per_night: rand(30..200),
    description: "You will have the apartment all to yourself. It's fully furnished with
    everything you need for the comfort of home while in the middle of a vital downtown
    scene. Hardwood floor, impeccably clean and compact. Japanese style futon bed.
    Air conditioners in both living room and bedroom. Free WiFi. Elevator.
    Laundry in the same building. But please note I do not have a TV.")


  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "West Street",
    address_number: "58",
    address_city: "New York City",
    address_country: "United States",
    address_zip: "10003",
    rental_type: "apartment",
    number_of_sleeps: "2",
    price_per_night: rand(30..200),
    description: "Welcome, Bienvenue, Wilkommen & Bienvenidos to the Lower East Side of New York (the LES!!).
    Very Big apartment. Your Very own bedroom. Your Very Own bathroom.
    Lots more. Hope to see you soon.")


  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Sheridan Square",
    address_number:  1,
    address_city: "New York City",
    address_country: "USA",
    address_zip: "10004",
    rental_type: "apartment",
    number_of_sleeps: 3,
    price_per_night: rand(30..200),
    description: "The Lower East Side of New York, where it all began in the U.S.
    I'll give the details quickly so you can see what you will be able to experience on your trip to the Big Apple
    • Very spacious loft apartment ( about 2000 square feet last measure - so BIG for New York)
    in the center of arguably the coolest area of the city (please do not argue ),
    modern and minimalist furniture,
    no clutter and very clean ( that goes for the host too)")


  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Madison Avenue",
    address_number: "1039",
    address_city: "New York City",
    address_country: "USA",
    address_zip: "1039",
    rental_type: "apartment",
    number_of_sleeps: 2,
    price_per_night: 100,
    description: "Bright one bedroom apartment with balcony in hip Lower Eastside
    of Manhattan. Steps away from great restaurants, galleries, and shops. Walking
    distance to Chinatown, East Village, Little Italy, Nolita & Soho. F train stops
    1 block away, B/D train 3 blocks away. Many bus stops nearby.
    You will have the apartment all to yourself. It's fully furnished with everything
    you need for the comfort of home while in the middle of a vital downtown scene.
    Hardwood floor, impeccably clean and compact. Japanese style futon bed.
    Air conditioners in both living room and bedroom. Free WiFi. Elevator.
    Laundry in the same building. But please note I do not have a TV.")



  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Kerklaan",
    address_number: 36,
    address_city: "Amsterdam",
    address_country: "Netherlands",
    address_zip: "1018",
    rental_type: "apartment",
    number_of_sleeps: 2,
    price_per_night: 100,
    description: "We are very happy to welcome you in Amsterdam! You’ll find our
    cozy attic room in the Plantage Area, nearby Artis Zoo.
    This area is loved because it's nice and quiet but still in the center of Amsterdam.
    The attic is on the third flour of a typically 19th century Amsterdam house
    with a canal view. The room is just renovated.")


  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Van Breestraat",
    address_number: "16",
    address_city: "Amsterdam",
    address_country: "Netherlands",
    address_zip: "1071",
    rental_type: "apartment",
    number_of_sleeps: 4,
    price_per_night: 100,
    description: "Bright one bedroom apartment with balcony in hip Lower Eastside
    of Manhattan. Steps away from great restaurants, galleries, and shops. Walking
    distance to Chinatown, East Village, Little Italy, Nolita & Soho. F train stops
    1 block away, B/D train 3 blocks away. Many bus stops nearby.
    You will have the apartment all to yourself.")


  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Oranje Nassaulaan",
    address_number: "26",
    address_city: "Amsterdam",
    address_country: "Netherlands",
    address_zip: "1075",
    rental_type: "apartment",
    number_of_sleeps: 2,
    price_per_night: 75,
    description: "We are very happy to welcome you in Amsterdam! You’ll find our
    beautiful home new Vondel Park.
    This area is loved because it's nice and quiet but still in the center of Amsterdam.
    The attic is on the third flour of a typically 19th century Amsterdam house
    with a canal view. The room is just renovated.")


  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Oranje Nassaulaan",
    address_number: "26",
    address_city: "Amsterdam",
    address_country: "Netherlands",
    address_zip: "1075",
    rental_type: "apartment",
    number_of_sleeps: 2,
    price_per_night: 40,
    description: "We are very happy to welcome you in Amsterdam! You’ll find our
    beautiful home new Vondel Park.
    This area is loved because it's nice and quiet but still in the center of Amsterdam.
    The attic is on the third flour of a typically 19th century Amsterdam house
    with a canal view. The room is just renovated.")


    Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Kromelleboogsteeg 2",
    address_number: "6",
    address_city: "Amsterdam",
    address_country: "Netherlands",
    address_zip: "1070",
    rental_type: "apartment",
    number_of_sleeps: 2,
    price_per_night: 70,
    description: "Our 2 room apartment has a living room with the greatest view on 'the Kolk'
    and on the St Nichalas churg, with a quiet big bedroom at the back of the house. The apartment is perfect for a couple or two people who don't mind sleeping in the same bed. While the bed room is rather quiet and cool (especially for the area we live in) our house is located on a busy street with many cafes under and next to our house.
    Open a window and you hear the buzzing sounds of the city.")


    Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Kromelleboogsteeg 2",
    address_number: "6",
    address_city: "Amsterdam",
    address_country: "Netherlands",
    address_zip: "1070",
    rental_type: "apartment",
    number_of_sleeps: 2,
    price_per_night: 50,
    description: "Our 2 room apartment has a living room with the greatest view on 'the Kolk'
    and on the St Nichalas churg, with a quiet big bedroom at the back of the house. The apartment is perfect for a couple or two people who don't mind sleeping in the same bed. While the bed room is rather quiet and cool (especially for the area we live in) our house is located on a busy street with many cafes under and next to our house.
    Open a window and you hear the buzzing sounds of the city.")


    Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Kromelleboogsteeg",
    address_number: "6",
    address_city: "Amsterdam",
    address_country: "Netherlands",
    address_zip: "1070",
    rental_type: "apartment",
    number_of_sleeps: 2,
    price_per_night: 45,
    description: "Our 2 room apartment has a living room with the greatest view on 'the Kolk'
    and on the St Nichalas churg, with a quiet big bedroom at the back of the house.
    The apartment is perfect for a couple or two people who don't mind sleeping in the same bed.
    While the bed room is rather quiet and cool (especially for the area we live in) our house is
    located on a busy street with many cafes under and next to our house.
    Open a window and you hear the buzzing sounds of the city.")



    Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Liedseplein Square",
    address_number: "7",
    address_city: "Amsterdam",
    address_country: "Netherlands",
    address_zip: "1072",
    rental_type: "apartment",
    number_of_sleeps: 2,
    price_per_night: 100,
    description: "Lovely and cosy nearly 50 m2 apartment in the heart of Amsterdam.‘Oud West’ is an easy-going and friendly neighbourhood with lots of café's,
    lunchrooms and restaurants. Just around the corner there is a very long shopping street the Kinkerstraat for all your daily needs and more.
    a 10 min walk from historic city center. It borders the 'grachtengordel' (the canals), Vondelpark and Leidsequare.
    My apartment is only 15 min. from the airport or central station. If you want to discover Amsterdam, just want to relax or
    if you have any other reason to visit, I’m very happy to welcome you to my lovely and cosy apartment.")


    Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Antoine Danseart",
    address_number: "5",
    address_city: "Brussels",
    address_country: "Belgium",
    address_zip: "1072",
    rental_type: "apartment",
    number_of_sleeps: 3,
    price_per_night: 100,
    description: "Charming apartment located in the Danseart Antoine, one of the trendiest districts of Brussels,
    famous for its bars, restaurants, designer shops and public transport (metro, tram, bus)
    The apartment is 2 minutes walk from the Stock Exchange and 5 minutes from the Grand Place.
    Fully renovated, it has all the amenities to make your stay pleasant (microwave, oven, dishwasher ...)
    The room has a double bed and the sofa converts into a bed for 2 people. Enjoy your stay in a trendy
    apartment and quiet while being close to major sights of Brussels. I remain at your disposal for any information.")


  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Rue du Midi",
    address_number: "3",
    address_city: "Brussels",
    address_country: "Belgium",
    address_zip: "1000",
    rental_type: "apartment",
    number_of_sleeps: 3,
    price_per_night: 100,
    description: "Charming apartment located in the Danseart Antoine, one of the trendiest districts of Brussels,
    famous for its bars, restaurants, designer shops and public transport (metro, tram, bus)
    The apartment is 2 minutes walk from the Stock Exchange and 5 minutes from the Grand Place.
    Fully renovated, it has all the amenities to make your stay pleasant (microwave, oven, dishwasher ...)
    The room has a double bed and the sofa converts into a bed for 2 people. Enjoy your stay in a trendy
    apartment and quiet while being close to major sights of Brussels. I remain at your disposal for any information.")


    Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Rue Leon Lapage",
    address_number: "7",
    address_city: "Brussels",
    address_country: "Belgium",
    address_zip: "1000",
    rental_type: "apartment",
    number_of_sleeps: 3,
    price_per_night: 60,
    description: "Located on the top floor of an iconic 60's modern Mondrianç building,
    the one bedroom flat is only 2 minutes walk from the station Centraal, Bourse,
    the fashion Dansaert Street and the majestic Grand-Place and Manneke Pis.")


    Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Rue des Sablons",
    address_number: "7",
    address_city: "Brussels",
    address_country: "Belgium",
    address_zip: "1000",
    rental_type: "apartment",
    number_of_sleeps: 3,
    price_per_night: 60,
    description: "Superb 85m2 apartment situated in the Marolles/Sablon, the best area to visit Brussels by foot. Close to everything
    (Grand-Place, Sablon, Museums, Royal Palace, Flea Market,...).")


    Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Rue des Sablons",
    address_number: "7",
    address_city: "Brussels",
    address_country: "Belgium",
    address_zip: "1000",
    rental_type: "apartment",
    number_of_sleeps: 3,
    price_per_night: 60,
    description: "Superb 85m2 apartment situated in the Marolles/Sablon, the best area to visit Brussels by foot. Close to everything
    (Grand-Place, Sablon, Museums, Royal Palace, Flea Market,...).")


  Rental.create(host_id: User.all.sample.id,
    name: Faker::Name.name,
    address_street: "Rue Coppens",
    address_number: "10",
    address_city: "Brussels",
    address_country: "Belgium",
    address_zip: "1000",
    rental_type: "apartment",
    number_of_sleeps: 4,
    price_per_night: 70,
    description: "Spacious apartment newly renovated and furnished for
    1 to 4 persons (85 m2) ideally situated in the heart of Brussels.")


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-03-12",
    checkout: "2015-03-27",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-04-09",
    checkout: "2015-09-19",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-03-21",
    checkout: "2015-03-14",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-03-12",
    checkout: "2015-03-20",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-04-10",
    checkout: "2015-04-20",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-05-15",
    checkout: "2015-05-25",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-06-19",
    checkout: "2015-06-30",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-06-19",
    checkout: "2015-06-30",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-04-11",
    checkout: "2015-04-21",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-04-07",
    checkout: "2015-04-21",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-05-04",
    checkout: "2015-05-12",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-06-04",
    checkout: "2015-06-15",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-04-04",
    checkout: "2015-04-15",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-05-01",
    checkout: "2015-05-15",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-05-15",
    checkout: "2015-05-30",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-05-15",
    checkout: "2015-05-30",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-05-21",
    checkout: "2015-05-30",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-03-11",
    checkout: "2015-03-22",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-03-11",
    checkout: "2015-03-22",
    status: Booking::STATUS.sample)


  Booking.create(
    rental_id: Rental.all.sample.id,
    visitor_id: User.all.sample.id,
    checkin: "2015-03-16",
    checkout: "2015-03-29",
    status: Booking::STATUS.sample)

