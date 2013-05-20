require 'test_helper'

class PlayersProfilesControllerTest < ActionController::TestCase
  setup do
    @players_profile = players_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create players_profile" do
    assert_difference('PlayersProfile.count') do
      post :create, players_profile: { age_category: @players_profile.age_category, date_of_birth: @players_profile.date_of_birth, name: @players_profile.name }
    end

    assert_redirected_to players_profile_path(assigns(:players_profile))
  end

  test "should show players_profile" do
    get :show, id: @players_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @players_profile
    assert_response :success
  end

  test "should update players_profile" do
    put :update, id: @players_profile, players_profile: { age_category: @players_profile.age_category, date_of_birth: @players_profile.date_of_birth, name: @players_profile.name }
    assert_redirected_to players_profile_path(assigns(:players_profile))
  end

  test "should destroy players_profile" do
    assert_difference('PlayersProfile.count', -1) do
      delete :destroy, id: @players_profile
    end

    assert_redirected_to players_profiles_path
  end
end
