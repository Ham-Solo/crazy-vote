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
    get :new
    post :create, id: @voter, voter: {name: "Z", email: "z@z.com", password: "password"}
    assert_redirected_to root_path
  end

  test "should get update" do
    get :new
    post :update, id: @voter, voter: {name: "A"}
    assert_redirected_to root_path
  end

  test "should get destroy" do
    post :destroy, id: @voter
    assert_redirected_to voter_url
  end

end
