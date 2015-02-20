require 'test_helper'

class StaffersControllerTest < ActionController::TestCase
  setup do
    @staffer = staffers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show, id: @staffer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staffer
    assert_response :success
  end

  test "should get create" do
    post :create, id: @staffer
    assert_response :success
  end

  test "should get update" do
    post :update, id: @staffer
    assert_response :success
  end

  test "should get destroy" do
    post :destroy, id: @staffer
    assert_response :success
  end

end
