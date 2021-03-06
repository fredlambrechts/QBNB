class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]

  # GET /rentals
  # GET /rentals.json
  def index
    if(params[:adress_city])
      @rentals = Rental.where(address_city: params[:adress_city])
      @markers = Gmaps4rails.build_markers(@rentals) do |rental, marker|
      marker.lat rental.latitude
      marker.lng rental.longitude
      end
    else
      # search_city = params[:adress_city]
      search_houses = params[:house]
      search_appts = params[:appt]
      @rentals = Rental.search(search_appts, search_houses)
      @markers = Gmaps4rails.build_markers(@rentals) do |rental, marker|
      marker.lat rental.latitude
      marker.lng rental.longitude
      end
    end
  end

  # GET /rentals/1
  # GET /rentals/1.json
  def show
    @rental = Rental.find(params[:id])
    @markers = Gmaps4rails.build_markers(@rental) do |rental, marker|
    marker.lat rental.latitude
    marker.lng rental.longitude
    end
  end

  # GET /rentals/new
  def new
    @rental = Rental.new
  end

  # GET /rentals/1/edit
  def edit
  end

  # POST /rentals
  # POST /rentals.json
  def create
    @rental = Rental.new(rental_params)

    respond_to do |format|
      if @rental.save
        format.html { redirect_to @rental, notice: 'Rental was successfully created.' }
        format.json { render :show, status: :created, location: @rental }
      else
        format.html { render :new }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rentals/1
  # PATCH/PUT /rentals/1.json
  def update
    respond_to do |format|
      if @rental.update(rental_params)
        format.html { redirect_to @rental, notice: 'Rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental }
      else
        format.html { render :edit }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rentals/1
  # DELETE /rentals/1.json
  def destroy
    @rental.destroy
    respond_to do |format|
      format.html { redirect_to rentals_url, notice: 'Rental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental
      @rental = Rental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_params
      params.require(:rental).permit(:host_id, :name, :address_street, :address_number, :address_city, :address_country, :address_zip, :rental_type, :number_of_sleeps, :price_per_night, :description, :picture)
    end
end

