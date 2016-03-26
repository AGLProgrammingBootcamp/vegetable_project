require 'test_helper'

class AgriusersControllerTest < ActionController::TestCase
  setup do
    @agriuser = agriusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agriusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agriuser" do
    assert_difference('Agriuser.count') do
      post :create, agriuser: { email: @agriuser.email, name: @agriuser.name }
    end

    assert_redirected_to agriuser_path(assigns(:agriuser))
  end

  test "should show agriuser" do
    get :show, id: @agriuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agriuser
    assert_response :success
  end

  test "should update agriuser" do
    patch :update, id: @agriuser, agriuser: { email: @agriuser.email, name: @agriuser.name }
    assert_redirected_to agriuser_path(assigns(:agriuser))
  end

  test "should destroy agriuser" do
    assert_difference('Agriuser.count', -1) do
      delete :destroy, id: @agriuser
    end

    assert_redirected_to agriusers_path
  end
end
