class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :send_welcome_email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :rentals

 has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  has_many :bookings

  def name
    if first_name.present? || last_name.present?
     "#{first_name} #{last_name}"
    else
     email
    end
  end

  private

    def send_welcome_email
      UserMailer.welcome(self).deliver
    end

end
