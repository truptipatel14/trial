require 'test_helper'

class ForcesControllerTest < ActionController::TestCase
  setup do
    @force = forces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create force" do
    assert_difference('Force.count') do
      post :create, force: { email: @force.email, name: @force.name, user: @force.user }
    end

    assert_redirected_to force_path(assigns(:force))
  end

  test "should show force" do
    get :show, id: @force
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @force
    assert_response :success
  end

  test "should update force" do
    patch :update, id: @force, force: { email: @force.email, name: @force.name, user: @force.user }
    assert_redirected_to force_path(assigns(:force))
  end

  test "should destroy force" do
    assert_difference('Force.count', -1) do
      delete :destroy, id: @force
    end

    assert_redirected_to forces_path
  end
end
