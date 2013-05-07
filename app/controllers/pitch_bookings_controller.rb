class PitchBookingsController < ApplicationController
  # GET /pitch_bookings
  # GET /pitch_bookings.json
  def index
    @pitch_bookings = PitchBooking.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pitch_bookings }
    end
  end

  # GET /pitch_bookings/1
  # GET /pitch_bookings/1.json
  def show
    @pitch_booking = PitchBooking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pitch_booking }
    end
  end

  # GET /pitch_bookings/new
  # GET /pitch_bookings/new.json
  def new
    @pitch_booking = PitchBooking.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pitch_booking }
    end
  end

  # GET /pitch_bookings/1/edit
  def edit
    @pitch_booking = PitchBooking.find(params[:id])
  end

  # POST /pitch_bookings
  # POST /pitch_bookings.json
  def create
    @pitch_booking = PitchBooking.new(params[:pitch_booking])

    respond_to do |format|
      if @pitch_booking.save
        format.html { redirect_to @pitch_booking, notice: 'Pitch booking was successfully created.' }
        format.json { render json: @pitch_booking, status: :created, location: @pitch_booking }
      else
        format.html { render action: "new" }
        format.json { render json: @pitch_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pitch_bookings/1
  # PUT /pitch_bookings/1.json
  def update
    @pitch_booking = PitchBooking.find(params[:id])

    respond_to do |format|
      if @pitch_booking.update_attributes(params[:pitch_booking])
        format.html { redirect_to @pitch_booking, notice: 'Pitch booking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pitch_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitch_bookings/1
  # DELETE /pitch_bookings/1.json
  def destroy
    @pitch_booking = PitchBooking.find(params[:id])
    @pitch_booking.destroy

    respond_to do |format|
      format.html { redirect_to pitch_bookings_url }
      format.json { head :no_content }
    end
  end
end
