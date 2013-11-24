require 'test_helper'

class ReplacesControllerTest < ActionController::TestCase
  setup do
    @replace = replaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:replaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create replace" do
    assert_difference('Replace.count') do
      post :create, replace: { name: @replace.name }
    end

    assert_redirected_to replace_path(assigns(:replace))
  end

  test "should show replace" do
    get :show, id: @replace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @replace
    assert_response :success
  end

  test "should update replace" do
    put :update, id: @replace, replace: { name: @replace.name }
    assert_redirected_to replace_path(assigns(:replace))
  end

  test "should destroy replace" do
    assert_difference('Replace.count', -1) do
      delete :destroy, id: @replace
    end

    assert_redirected_to replaces_path
  end
end
