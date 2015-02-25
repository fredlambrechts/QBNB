class Rental < ActiveRecord::Base

  RENTAL_TYPE = ["house","appt"]
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  def self.appts
    where(rental_type: "appt")
  end

  def self.houses
    where(rental_type: "house")
  end

# For later: rewrite self selection methods into scopes
  # scope :rental_type, -> (rental_type) { where rental_type: rental_type }
  # scope :location, -> (address_city) { where address_city: address_city }
end
