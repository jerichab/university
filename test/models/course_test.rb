require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  def setup
    @course = Course.new(name: "Name Sunny Boi", department: "SA", number: 3, credits: 4)
  end

  test "should be valid" do
    @course.valid?
  end

end