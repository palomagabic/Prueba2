require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get positive" do
    get users_positive_url
    assert_response :success
  end

  test "should get negative" do
    get users_negative_url
    assert_response :success
  end

end
