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
      Ситість: #{@satiety}
      Гігієна: #{@hygiene}
      Бадьорість: #{@cheerfulness}
      \nВік вихованця: #{@age} день"
  end

  def cls
    system('clear') || system('cls')
  end
end
