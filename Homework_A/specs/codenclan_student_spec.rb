require("minitest/autorun")
require("minitest/rg")

require_relative("../codeclan_student")

class TestStudent < MiniTest::Test

  def Test_get_name_student

    student = Student.new("Cleyra", "G5")

    assert_equal("Cleyra", student.name)
  end

  def Test_get_cohort_student

    student = Student.new("Cleyra", "G5")

    assert_equal("G5", student.cohort)
  end

  def Test_set_name_student

    student = Student.new("Cleyra", "G5")

    student.name = "Cleyra Uzcategui"

    assert_equal("Cleyra Uzcategui", student.name)
  end

  def Test_get_cohort_student
    student = Student.new("Cleyra", "G5")

    student.cohort = "G6"

    assert_equal("G6", student.cohort)
  end

  def student_can_talk
    student = Student.new("Cleyra", "G5")

    student.student_can_talk("I can talk")

    assert_equal("I can talk", student.student_can_talk)
  end

  def Test_say_favourite_language
    student = Student.new("Cleyra", "G5")

    student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", student.say_favourite_language)
  end

  end
