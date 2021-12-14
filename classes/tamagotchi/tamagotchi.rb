class Tamagotchi
  attr_accessor :name, :health, :joyfulness, :satiety, :hygiene, :cheerfulness

  def initialize(name, health, joyfulness, satiety, hygiene, cheerfulness)
    @name = name
    @health = health
    @joyfulness = joyfulness
    @satiety = satiety
    @hygiene = hygiene
    @cheerfulness = cheerfulness
    @age = 1
  end

  def show_statistics
    cls

    puts "Вихованець: #{name.capitalize}
         \n           ｡◕‿◕｡\n
     Показники:
     Здоров'я: #{health}
     Радість: #{joyfulness}
     Бадьорість: #{cheerfulness}
     Ситість: #{satiety}
     Гігієна: #{hygiene}
     \nВік вихованця: #{@age} день"

    put_number
  end

  def cls
    system('clear') || system('cls')
  end

  def put_number
    puts "\nГрати далі - натисніть 1"
    number = gets.to_i

    until number == 1 do
      puts "Грати далі - натисніть 1"
      number = gets.to_i
    end
  end
end
