class Person
  def initialize(name, second_name, age)
    @name = name
    @second_name = second_name
    @age = age
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
