require 'test_helper'

class RetailerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get retailer_create_url
    assert_response :success
  end

  test "should get new" do
    get retailer_new_url
    assert_response :success
  end

  test "should get edit" do
    get retailer_edit_url
    assert_response :success
  end

  test "should get update" do
    get retailer_update_url
    assert_response :success
  end

  test "should get show" do
    get retailer_show_url
    assert_response :success
  end

end
