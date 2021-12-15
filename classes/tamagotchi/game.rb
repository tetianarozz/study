require_relative 'helper'
require_relative 'tamagotchi'

class Game
  include Helper

  attr_reader :pet

  def initialize(pet)
    @pet = pet
  end

  def ask_level(index)
    puts "Вітаємо у грі Тамагочі!
      \nОберіть рівень складності гри: \n
      1. Легкий
      2. Середній
      3. Важкий "

    number = gets.to_i

    until number.between?(1,3) do
      cls

      puts "Вітаємо у грі Тамагочі!
      \nОберіть рівень складності гри:
      \n1. Легкий
      2. Середній
      3. Важкий "

      number = gets.to_i
    end

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

  def start
    show_stats

    while pet.live? do
      cls

      choice = choose_action(pet.name)

      pet.update(choice)

      show_stats
    end

    show_stats
    pet.explain_death
  end

  private

  def choose_action(name)
    puts "Оберіть дію для #{name.capitalize}:
        \n           ｡◕‿◕｡\n
   1. Лікувати
   2. Грати
   3. Вкласти спати
   4. Погодувати
   5. Купати
   6. Відправити на прогулянку одного"

    gets.to_i
  end

  def put_number
    puts "\nПродовжити гру - натисніть 'Enter'"
    gets.to_i
 end

  def show_stats
    pet.show_statistics
    put_number
  end
end
