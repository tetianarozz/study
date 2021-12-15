require_relative 'helper'
require_relative 'tamagotchi'

class Game
  include Helper

  attr_reader :pet

  def initialize(pet)
    @pet = pet
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
    puts "\nГрати далі - натисніть 1"
    number = gets.to_i

    while number != 1 do
      puts "Грати далі - натисніть 1"
      number = gets.to_i
    end
  end

  def show_stats
    pet.show_statistics
    put_number
  end
end
