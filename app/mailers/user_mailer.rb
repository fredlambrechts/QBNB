class UserMailer < ApplicationMailer
  default from: 'subscribe@qbnb.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user

    mail(to: @user.email, subject: 'Welcome to QBNB')
  end

  def availability_request(owner, booking)
    @owner = owner
    @booking = booking

    mail(to: @owner.email, subject: 'Someone wants to know if your rental is avialable!')
  end

end
