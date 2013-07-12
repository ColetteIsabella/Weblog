require 'test_helper'

class WeblingsControllerTest < ActionController::TestCase
  setup do
    @webling = weblings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weblings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webling" do
    assert_difference('Webling.count') do
      post :create, webling: { Description: @webling.Description, URL: @webling.URL }
    end

    assert_redirected_to webling_path(assigns(:webling))
  end

  test "should show webling" do
    get :show, id: @webling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webling
    assert_response :success
  end

  test "should update webling" do
    put :update, id: @webling, webling: { Description: @webling.Description, URL: @webling.URL }
    assert_redirected_to webling_path(assigns(:webling))
  end

  test "should destroy webling" do
    assert_difference('Webling.count', -1) do
      delete :destroy, id: @webling
    end

    assert_redirected_to weblings_path
  end
end
