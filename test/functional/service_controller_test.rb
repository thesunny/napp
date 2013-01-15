require 'test_helper'

class ServiceControllerTest < ActionController::TestCase
  test "should get site_id:integer" do
    get :site_id:integer
    assert_response :success
  end

  test "should get slug" do
    get :slug
    assert_response :success
  end

  test "should get name" do
    get :name
    assert_response :success
  end

  test "should get content:text" do
    get :content:text
    assert_response :success
  end

end
