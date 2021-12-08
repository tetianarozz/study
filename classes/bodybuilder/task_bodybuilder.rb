#Создайте класс Бодибилдер. У него должно быть одно свойство на каждую группу мышц (минимум 3).
# Напишите конструктор, который создаёт бодибилдера-хиляка, у которого все мышцы по нулям.
# Потом создайте для нашего бодибилдера метод прокачать мышцу: (параметр - название мышцы = название свойства соответствующей группы мышц)
# Метод увеличивает эту мышцу на 1.
# Создайте также метод вывода на экран «прокачки» бодибилдера: на разных строчках выводит текущее состояние каждой группы мышц.
# Подключите класс, создайте двух-трёх бодибилдеров, покачайте их и покажите их жюри.

require_relative 'bodybuilder'

bodybuilber1 = Bodybuilder.new
bodybuilber2 = Bodybuilder.new
bodybuilber3 = Bodybuilder.new

8.times do
  bodybuilber1.pump("biceps")
end

5.times do
  bodybuilber1.pump("triceps")
end

10.times do
  bodybuilber1.pump("deltoid")
end

9.times do
  bodybuilber2.pump("biceps")
end

8.times do
  bodybuilber2.pump("triceps")
end

9.times do
  bodybuilber2.pump("deltoid")
end

10.times do
  bodybuilber3.pump("biceps")
end

10.times do
  bodybuilber3.pump("triceps")
end

8.times do
  bodybuilber3.pump("deltoid")
end

puts "Перший бодібілдер:"
bodybuilber1.show_body

puts "Другий бодібілдер:"
bodybuilber2.show_body

puts "Третій бодібілдер:"
bodybuilber3.show_body
