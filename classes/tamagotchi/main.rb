require_relative 'tamagotchi'
require_relative 'game'
action = nil

puts "Введіть ім'я Вашого вихованця:"
name = gets.chomp

pet = Tamagotchi.new(name, 100, 100, 100, 100, 100)

def choose_action
  pet_name = name.capitalize
  puts "Оберіть дію для #{pet_name}:
        \n           ｡◕‿◕｡\n
   1. Лікувати
   2. Грати
   3. Вкласти спати
   4. Погодувати
   5. Купати
   6. Відправити на прогулянку одного"

  action = gets.to_i
end

pet.show_statistics

choose_action

result

pet.show_statistics



