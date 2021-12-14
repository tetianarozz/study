require_relative 'tamagotchi'

puts "Введіть ім'я Вашого вихованця:"
name = gets.chomp

pet = Tamagotchi.new(name, 100, 100, 100, 100, 100, 1)

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

pet.show_statistics

while pet.live? do
  choise = choose_action(name)

  pet.result(choise)

  pet.show_statistics
end

pet.explain_death

