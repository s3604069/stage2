require 'test_helper'

class CoursesAddTest < ActionDispatch::IntegrationTest

  test "invalid course information" do
    get addnew_path
    assert_no_difference 'Course.count' do
      post courses_path, params: { course: { name:  "dew" * 100,
                                         prerequisite: "69" * 100,
                                         category:    "1234",
                                         location: "9999" } }
    end
    assert_template 'courses/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end
end