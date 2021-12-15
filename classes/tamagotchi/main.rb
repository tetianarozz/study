require_relative 'tamagotchi'
require_relative 'game'

puts "Введіть ім'я Вашого вихованця:"
name = gets.chomp

pet = Tamagotchi.new(name, 100, 100, 100, 100, 100, 1)

Game.new(pet).start
