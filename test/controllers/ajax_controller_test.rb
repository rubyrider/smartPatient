require 'test_helper'

class AjaxControllerTest < ActionController::TestCase
  test "should get fetch_location" do
    get :fetch_location
    assert_response :success
  end

end
