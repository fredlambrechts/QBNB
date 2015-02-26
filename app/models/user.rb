class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :send_welcome_email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :rentals
  has_many :bookings

  def name
    "#{first_name} #{last_name}"
  end

  private

    def send_welcome_email
      UserMailer.welcome(self).deliver
    end

end
