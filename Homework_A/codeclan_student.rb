class Student
  attr_accessor :name, :cohort

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def student_can_talk()
return "I can talk"
  end

  def say_favourite_language(student, language)
    language = student.push(language)
    return "I love #{language}"
  end
end
