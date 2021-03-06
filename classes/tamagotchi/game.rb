class Game
  attr_accessor :pet

  def initialize(pet)
    @pet = pet
  end

  def start
    cls
    number = ask_level

    index = indicate_index(number)

    pet.ask_name
    cls
    show_stats

    while pet.live? do
      cls
      choice = choose_action(pet.name)

      cls
      pet.update(choice, index)

      show_stats if pet.live?
    end

    cls
    pet.explain_death
    pet.show_statistics
    exit
  end

  private

  def ask_level
    puts "Вітаємо у грі Тамагочі!
      \nОберіть рівень складності гри: \n
      1. Легкий
      2. Середній
      3. Важкий "

    number = gets.to_i

    until number.between?(1,3) do
      cls

      puts "Вітаємо у грі Тамагочі!
      \nОберіть рівень складності гри:\n
      1. Легкий
      2. Середній
      3. Важкий "

      number = gets.to_i
    end
    number
  end

  def indicate_index(number)
    index = nil

    case number
    when 1
      index = 5
    when 2
      index = 10
    when 3
      index = 15
    else
      puts "error"
    end
    index
  end

  def choose_action(name)
    puts "Оберіть дію для #{name.capitalize}:
        \n           ｡◕‿◕｡\n
   1. Грати з #{name.capitalize}
   2. Відправити на прогулянку одного
   3. Погодувати
   4. Прийняти ванну
   5. Сон
   6. Прийом у лікаря"

    gets.to_i
  end

  def put_number
    puts "\nПродовжити гру - натисніть 'Enter'"
    gets.to_i
  end

  def cls
    system('clear') || system('cls')
  end

  def show_stats
    pet.show_statistics
    put_number
  end
end
