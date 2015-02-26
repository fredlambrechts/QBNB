class Booking < ActiveRecord::Base
  belongs_to :rental
  belongs_to :visitor, :class_name => 'User'
  STATUS = ["av_req_sbmt", "av_req_decl", "av_req_acptd", "req_timed_out", "bkng_prcsd", "bkng_cncld", "stay_ong", "bkng_closed"]
end
