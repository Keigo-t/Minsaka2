require "test_helper"

class Admin::LeaguesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_leagues_new_url
    assert_response :success
  end
end
