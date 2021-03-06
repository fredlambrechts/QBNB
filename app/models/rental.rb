class Rental < ActiveRecord::Base

  has_many :bookings
  belongs_to :user

  RENTAL_TYPE = ["house","appt"]

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => ":style/missing.jpg"

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def full_address
    "#{address_street} " + "#{address_number} " + "#{address_city} " + "#{address_country} " + "#{address_zip} "
  end

  def full_address_changed?
    address_street_changed? || address_number_changed? || address_city_changed? || address_country_changed? || address_zip_changed?
  end

  def self.appts
    where(rental_type: "appt")
  end

  def self.houses
    where(rental_type: "house")
  end

  def self.search(search_appts, search_houses)
    if search_appts && !search_houses
      appts
    elsif !search_appts && search_houses
      houses
    else
      all
    end
  end

# For later: rewrite self selection methods into scopes
  # scope :rental_type, -> (rental_type) { where rental_type: rental_type }
  # scope :location, -> (address_city) { where address_city: address_city }
end
