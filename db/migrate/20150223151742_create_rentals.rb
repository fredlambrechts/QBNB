class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :host_id
      t.string :name
      t.string :address_street
      t.string :address_number
      t.string :address_city
      t.string :address_country
      t.string :address_zip
      t.string :rental_type
      t.integer :number_of_sleeps
      t.integer :price_per_night
      t.string :description

      t.timestamps null: false
    end
  end
end
