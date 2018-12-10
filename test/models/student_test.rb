require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  def setup
    @student = Student.new(name: "FDsaFdskalhgr fdjksajf", number: 900123456)
  end

  test "should be valid" do
    @student.valid?
  end

  test "name should be present" do
    @student.name = ""
    assert_not @student.valid?
  end

  test "number should be present" do
    @student.number = ""
    assert_not @student.valid?
  end

  test "number 9 integers" do
    @student.number = "1111111111"
    assert_not @student.valid?
  end  

  test "name not to exceed 55" do
    @student.name = "a" * 60
    assert_not @student.valid?
  end

  test "student should be unique" do
    duplicate_student = @student.dup
    @student.save
    assert_not duplicate_student.valid?
  end

end
