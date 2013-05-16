require 'test_helper'

class SignUpNewslettersControllerTest < ActionController::TestCase
  setup do
    @sign_up_newsletter = sign_up_newsletters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sign_up_newsletters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sign_up_newsletter" do
    assert_difference('SignUpNewsletter.count') do
      post :create, sign_up_newsletter: { email: @sign_up_newsletter.email, name: @sign_up_newsletter.name }
    end

    assert_redirected_to sign_up_newsletter_path(assigns(:sign_up_newsletter))
  end

  test "should show sign_up_newsletter" do
    get :show, id: @sign_up_newsletter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sign_up_newsletter
    assert_response :success
  end

  test "should update sign_up_newsletter" do
    put :update, id: @sign_up_newsletter, sign_up_newsletter: { email: @sign_up_newsletter.email, name: @sign_up_newsletter.name }
    assert_redirected_to sign_up_newsletter_path(assigns(:sign_up_newsletter))
  end

  test "should destroy sign_up_newsletter" do
    assert_difference('SignUpNewsletter.count', -1) do
      delete :destroy, id: @sign_up_newsletter
    end

    assert_redirected_to sign_up_newsletters_path
  end
end
