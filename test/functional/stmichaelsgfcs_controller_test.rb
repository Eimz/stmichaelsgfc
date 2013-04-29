require 'test_helper'

class StmichaelsgfcsControllerTest < ActionController::TestCase
  setup do
    @stmichaelsgfc = stmichaelsgfcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stmichaelsgfcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stmichaelsgfc" do
    assert_difference('Stmichaelsgfc.count') do
      post :create, stmichaelsgfc: {  }
    end

    assert_redirected_to stmichaelsgfc_path(assigns(:stmichaelsgfc))
  end

  test "should show stmichaelsgfc" do
    get :show, id: @stmichaelsgfc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stmichaelsgfc
    assert_response :success
  end

  test "should update stmichaelsgfc" do
    put :update, id: @stmichaelsgfc, stmichaelsgfc: {  }
    assert_redirected_to stmichaelsgfc_path(assigns(:stmichaelsgfc))
  end

  test "should destroy stmichaelsgfc" do
    assert_difference('Stmichaelsgfc.count', -1) do
      delete :destroy, id: @stmichaelsgfc
    end

    assert_redirected_to stmichaelsgfcs_path
  end
end
