class Person
  def initialize(name, second_name, age)
    @name = name
    @second_name = second_name
    @age = age
  end

  def full_name
    return (puts "#{@name} #{@second_name}") if @age > 60

    puts "#{@name}"
  end

  def age_check
    return (puts "І йому #{@age} - літня людина") if @age > 60

    puts "І йому #{@age} - молодий"
  end
end
