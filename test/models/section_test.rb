require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  
  def setup
    @section = Section.new(semester: "Fall 18", number: 123, course_id: 2, room: "AS 109")
  end

  test "should be valid" do
    @section.valid?
  end

end
