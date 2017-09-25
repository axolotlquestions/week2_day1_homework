
class Student

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def set_name(new_name)
      @name = new_name
  end

  def set_cohort(new_cohort)
      @cohort = new_cohort
  end

  def talking
    return "I can talk"
  end

  def favourite_language(language)
    return "I love #{language}!"
  end

end
