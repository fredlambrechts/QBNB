class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :rental, index: true
      t.references :visitor, index: true
      t.date :checkin
      t.date :checkout
      t.string :status

      t.timestamps null: false
    end
    add_foreign_key :bookings, :rentals
    add_foreign_key :bookings, :users, column: :visitor_id
  end
end
