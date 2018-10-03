require 'test_helper'

class DrugsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get drugs_create_url
    assert_response :success
  end

  test "should get new" do
    get drugs_new_url
    assert_response :success
  end

end
