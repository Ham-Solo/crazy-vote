require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  setup do
    @voter = voters(:one)
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
    get :show, id: @voter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voter
    assert_response :success
  end

  test "should get create" do
    post :create, id: @voter
    assert_response :success
  end

  test "should get update" do
    post :update, id: @voter
    assert_response :success
  end

  test "should get destroy" do
    post :destroy, id: @voter
    assert_response :success
  end

end
