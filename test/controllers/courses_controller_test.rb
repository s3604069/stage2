require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get courses_edit_url
    assert_response :success
  end

end
