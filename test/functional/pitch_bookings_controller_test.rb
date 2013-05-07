require 'test_helper'

class PitchBookingsControllerTest < ActionController::TestCase
  setup do
    @pitch_booking = pitch_bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pitch_bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pitch_booking" do
    assert_difference('PitchBooking.count') do
      post :create, pitch_booking: { date: @pitch_booking.date, email: @pitch_booking.email, name: @pitch_booking.name, phone: @pitch_booking.phone, reason: @pitch_booking.reason }
    end

    assert_redirected_to pitch_booking_path(assigns(:pitch_booking))
  end

  test "should show pitch_booking" do
    get :show, id: @pitch_booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pitch_booking
    assert_response :success
  end

  test "should update pitch_booking" do
    put :update, id: @pitch_booking, pitch_booking: { date: @pitch_booking.date, email: @pitch_booking.email, name: @pitch_booking.name, phone: @pitch_booking.phone, reason: @pitch_booking.reason }
    assert_redirected_to pitch_booking_path(assigns(:pitch_booking))
  end

  test "should destroy pitch_booking" do
    assert_difference('PitchBooking.count', -1) do
      delete :destroy, id: @pitch_booking
    end

    assert_redirected_to pitch_bookings_path
  end
end
