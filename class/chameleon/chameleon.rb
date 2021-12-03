class Chameleon
  def initialize
    puts "Хамелеон створений :)"
    @color = [
      "червоний",
      "синій",
      "зелений",
      "блакитний",
      "жовтий"
    ]
  end

  def change_color
    puts "Тепер я #{@color.sample} !"
    sleep 1
  end
end