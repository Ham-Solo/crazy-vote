require 'test_helper'

class BillsControllerTest < ActionController::TestCase
  setup do
    @bill = bills(:one)
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
    get :show, id: @bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill
    assert_response :success
  end

  test "should get update" do
    post :update, id: @bill, bill: {name: "HB104"}
    assert_redirected_to root_path
  end

  test "should get create" do
    post :create, id: @bill, bill: {name: "HB104"}
    assert_redirected_to root_path
    end

  test "should get destroy" do
    post :destroy, id: @bill
    assert_redirected_to bills_url
  end

end
