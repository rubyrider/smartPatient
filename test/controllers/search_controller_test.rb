require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get doctors" do
    get :doctors
    assert_response :success
  end

end
