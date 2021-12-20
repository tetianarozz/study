require_relative 'game'
require_relative 'tamagotchi'

my_pet = Tamagotchi.new

Game.new(my_pet).start
