require 'test_helper'

class NewsletterStMicahelsGfcsControllerTest < ActionController::TestCase
  setup do
    @newsletter_st_micahels_gfc = newsletter_st_micahels_gfcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsletter_st_micahels_gfcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsletter_st_micahels_gfc" do
    assert_difference('NewsletterStMicahelsGfc.count') do
      post :create, newsletter_st_micahels_gfc: { content: @newsletter_st_micahels_gfc.content, date: @newsletter_st_micahels_gfc.date, title: @newsletter_st_micahels_gfc.title }
    end

    assert_redirected_to newsletter_st_micahels_gfc_path(assigns(:newsletter_st_micahels_gfc))
  end

  test "should show newsletter_st_micahels_gfc" do
    get :show, id: @newsletter_st_micahels_gfc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsletter_st_micahels_gfc
    assert_response :success
  end

  test "should update newsletter_st_micahels_gfc" do
    put :update, id: @newsletter_st_micahels_gfc, newsletter_st_micahels_gfc: { content: @newsletter_st_micahels_gfc.content, date: @newsletter_st_micahels_gfc.date, title: @newsletter_st_micahels_gfc.title }
    assert_redirected_to newsletter_st_micahels_gfc_path(assigns(:newsletter_st_micahels_gfc))
  end

  test "should destroy newsletter_st_micahels_gfc" do
    assert_difference('NewsletterStMicahelsGfc.count', -1) do
      delete :destroy, id: @newsletter_st_micahels_gfc
    end

    assert_redirected_to newsletter_st_micahels_gfcs_path
  end
end
