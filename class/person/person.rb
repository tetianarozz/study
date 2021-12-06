class Person
  def initialize(person_name, person_second_name, person_age)
    @name = person_name
    @second_name = person_second_name
    @age = person_age
  end

  def full_name
    if @age > 60
      puts "#{@name} #{@second_name}"
    else
      puts "#{@name}"

    end
  end

  def age_check
    if @age > 60
      puts "І йому #{@age} - літня людина"
    else
      puts "І йому #{@age} - молодий"
    end
  end
end
