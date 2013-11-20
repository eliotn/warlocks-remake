require 'test_helper'

class InformationPageControllerTest < ActionController::TestCase
  setup do
    @information_page = information_pages(:one)
  end

  test "should get home" do
    get "home"
    assert_response :success
  end
end
