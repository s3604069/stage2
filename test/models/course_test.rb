require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  def setup
    @course = Course.new(name: "Sample Course", prerequisite: "example", category: "testing", location: "0.0.1")
  end

  test "should be valid" do
    assert @course.valid?
  end

  test "name should not be too long" do
    @course.name = "a" * 51
    assert_not @course.valid?
  end
  
  test "prerequisite should not be too long" do
    @course.prerequisite = "a" * 256
    assert_not @course.valid?
  end
  
  test "category should not be too long" do
    @course.category = "a" * 51
    assert_not @course.valid?
  end
  
  test "location should not be too long" do
    @course.location = "a" * 11
    assert_not @course.valid?
  end
  
end
