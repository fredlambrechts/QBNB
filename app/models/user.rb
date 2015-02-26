class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :omniauthable, :omniauth_providers => [ :facebook ]

  has_many :rentals
  has_many :bookings

  has_attached_file :picture,
    styles: { big: "600x600#", medium: "300x300>", thumb: "100x100>" },
    :default_url => "default_user_picture.svg"

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/



  def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.name = auth.info.name
      # user.picture = auth.info.image
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
    end
  end

  #  Er is iets mis met de facebook image. FB geeft een url terug. Dit moet nog gemaakt worden.
  # def image
  #   if picture.file? || picture.nil?
  #     return picture.url(:big)
  #   else
  #     return "#{picture}?type=large"
  #   end
  # end

end
