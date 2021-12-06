class Person
  def initialize(person_name, person_second_name)
    @name = person_name
    @second_name = person_second_name
  end

  def full_name
    return "#{@name} #{@second_name}"
  end
end
