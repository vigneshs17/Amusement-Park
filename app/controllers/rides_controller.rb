class RidesController < ApplicationController
  before_action :authenticate_employee!
  before_action :set_ride, only: [:show, :edit, :update, :destroy]

  # GET /rides
  # GET /rides.json
  def index
    @park = Park.all.map{|p| [p.pname, p.pno]}
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
    @rides = Ride.all
  end

  # GET /rides/1
  # GET /rides/1.json
  def show
    @park = Park.all.map{|p| [p.pname, p.pno]}
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
  end

  # GET /rides/new
  def new
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
    @ride = Ride.new
  end

  # GET /rides/1/edit
  def edit
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
  end

  # POST /rides
  # POST /rides.json
  def create
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
    @ride = Ride.new(ride_params)

    respond_to do |format|
      if @ride.save
        format.html { redirect_to @ride, notice: 'Ride was successfully created.' }
        format.json { render :show, status: :created, location: @ride }
      else
        format.html { render :new }
        format.json { render json: @ride.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rides/1
  # PATCH/PUT /rides/1.json
  def update
    respond_to do |format|
      if @ride.update(ride_params)
        format.html { redirect_to @ride, notice: 'Ride was successfully updated.' }
        format.json { render :show, status: :ok, location: @ride }
      else
        format.html { render :edit }
        format.json { render json: @ride.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rides/1
  # DELETE /rides/1.json
  def destroy
    @ride.destroy
    respond_to do |format|
      format.html { redirect_to rides_url, notice: 'Ride was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ride
      @ride = Ride.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ride_params
      params.require(:ride).permit(:rno, :rname, :exists_in)
    end
end
