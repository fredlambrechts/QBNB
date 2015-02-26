class BookingsController < ApplicationController
  before_action :set_rental

  def create
    @booking = @rental.bookings.build(booking_params)
    @booking.status = "av_req_sbmt"
    @booking.visitor_id = current_user.id

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @rental, notice: 'booking was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def new

    @booking = Booking.new
  end

  def edit
  end

  def show
  end


  private

    def set_rental
      @rental = Rental.find_by_id(params[:rental_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:visitor_id, :checkin, :checkout, :status)
    end

end