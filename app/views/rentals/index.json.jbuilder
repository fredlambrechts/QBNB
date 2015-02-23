json.array!(@rentals) do |rental|
  json.extract! rental, :id, :host_id, :name, :address_street, :address_number, :address_city, :address_country, :address_zip, :rental_type, :number_of_sleeps, :price_per_night, :description
  json.url rental_url(rental, format: :json)
end
