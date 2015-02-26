class Booking < ActiveRecord::Base
  belongs_to :rental
  belongs_to :visitor, :class_name => 'User'
  STATUS = ["av_req_sbmt", "av_req_decl", "av_req_acptd", "req_timed_out", "bkng_prcsd", "bkng_cncld", "stay_ong", "bkng_closed"]
  after_create :send_availability_check_email

  private

  def send_availability_check_email
    @owner = User.find_by_id(Rental.find_by_id(self.rental_id).host_id)

    UserMailer.availability_request(@owner, self).deliver
  end

end
