class Tamagotchi
  def initialize
    @name = nil
    @health = 100
    @joyfulness = 100
    @satiety = 100
    @hygiene = 100
    @cheerfulness = 100
    @age = 1
  end

  def get_name
    puts "Введіть ім'я Вашого вихованця:"
    @name = gets.chomp
  end

  def show_statistics
    cls
    puts "Вихованець: #{@name.capitalize}"
    puts "\nПоказники:"
    puts "Здоров'я: #{@health}"
    puts "Радість: #{@joyfulness}"
    puts "Ситість: #{@satiety}"
    puts "Гігієна: #{@hygiene}"
    puts "Бадьорість: #{@cheerfulness}"
    puts "\nВік вихованця: #{@age} день"
  end

  def cls
    system('clear') || system('cls')
  end
end
