class Tamagotchi
  def initialize(health, joyfulness, satiety, hygiene, cheerfulness)
    @name = nil
    @health = health
    @joyfulness = joyfulness
    @satiety = satiety
    @hygiene = hygiene
    @cheerfulness = cheerfulness
    @age = 1
  end

  def get_name
    puts "Введіть ім'я Вашого вихованця:"
    @name = gets.chomp
  end

  def show_statistics
    cls

    puts "Вихованець: #{@name.capitalize}
         \n           ｡◕‿◕｡
     \nПоказники:
     Здоров'я: #{@health}
     Радість: #{@joyfulness}
     Бадьорість: #{@cheerfulness}
     Ситість: #{@satiety}
     Гігієна: #{@hygiene}
     \nВік вихованця: #{@age} день"

    puts "\nДля виходу зі статистики натисніть 1"
    number = gets.to_i

    until number == 1 do
      puts "Для виходу зі статистики натисніть 1"
      number = gets.to_i
    end
  end

  def choose_action
    cls
    puts "\nОберіть дію для #{@name.capitalize}:
    1. Лікувати
    2. Грати
    3. Вкласти спати
    4. Годувати
    5. Купати"

    action = gets.to_i

    case action
    when 1
      @health += 10
    when 2
      @joyfulness += 10
    when 3
      @cheerfulness += 10
    when 4
      @satiety += 10
    when 5
      @hygiene += 10
    end
  end

  def cls
    system('clear') || system('cls')
  end
end
