require 'test_helper'

class DoctorSessionsControllerTest < ActionController::TestCase
  test "should get new_chamber" do
    get :new_chamber
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get on_session" do
    get :on_session
    assert_response :success
  end

end
