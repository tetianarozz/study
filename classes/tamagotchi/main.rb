require_relative 'tamagotchi'

choise = nil

puts "Введіть ім'я Вашого вихованця:"
name = gets.chomp

pet = Tamagotchi.new(name, 100, 100, 100, 100, 100, 1)

def choose_action(name, choise)
  puts "Оберіть дію для #{name.capitalize}:
        \n           ｡◕‿◕｡\n
   1. Лікувати
   2. Грати
   3. Вкласти спати
   4. Погодувати
   5. Купати
   6. Відправити на прогулянку одного"

  choise = gets.to_i

  return choise
end

pet.show_statistics



while pet.health  > 0 || pet.joyfulness > 0 || pet.satiety > 0 || pet.hygiene > 0 || pet.cheerfulness > 0 || pet.age > 10 do
  choose_action(name, choise)

  pet.result(choise)

  pet.show_statistics
end

explain_death

