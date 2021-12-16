require_relative 'helper'
require_relative 'game'

class Tamagotchi
  include Helper

  attr_accessor :name, :health, :joyfulness, :satiety, :hygiene, :cheerfulness, :age

  def initialize(name, health, joyfulness, satiety, hygiene, cheerfulness, age)
    @name = name
    @health = health
    @joyfulness = joyfulness
    @satiety = satiety
    @hygiene = hygiene
    @cheerfulness = cheerfulness
    @age = age
  end

  def ask_name
    puts "Введіть ім'я Вашого вихованця:"
    @name = gets.chomp
  end

  def show_statistics
    puts "Вихованець: #{name.capitalize}
         \n           ｡◕‿◕｡\n
     Показники:
     Здоров'я: #{health}
     Радість: #{joyfulness}
     Бадьорість: #{cheerfulness}
     Ситість: #{satiety}
     Гігієна: #{hygiene}
     \nВік вихованця: #{age} день"

  end

  def update(choice, index)
    case choice
    when 1
      puts "Гра пройшла чудово, #{name.capitalize} щасливий. Тепер не завадило б поїсти і прийняти ванну \n "
      @joyfulness = 100
      @health -= (10 + index)
      @cheerfulness -= (10 + index)
      @satiety -= (20 + index)
      @hygiene -= (20 + index)
      @age += 1
    when 2
      puts "Упс, #{name.capitalize} заблукав у лісі, повернувся додому через 3 дні брудний, стомлений та голодний :(\n "
      @joyfulness = 100
      @hygiene -= (30 + index)
      @satiety -= (30 + index)
      @cheerfulness -= (30 + index)
      @health -= (30 + index)
      @age += 3
    when 3
      puts "#{name.capitalize} нарешті наївся і тепер хоче спати :)\n "
      @satiety = 100
      @health -= (10 + index)
      @cheerfulness -= (20 + index)
      @hygiene -= (10 + index)
      @age += 1
    when 4
      puts "Після гарячої ванни так хочеться спати...\n "
      @hygiene = 100
      @joyfulness -= (10 + index)
      @cheerfulness -= (20 + index)
      @satiety -= (10 + index)
      @age += 1
    when 5
      puts "#{name.capitalize} виспався і готовий розважатись. Як щодо прогулянки?\n "
      @cheerfulness = 100
      @joyfulness -= (20 + index)
      @satiety -= (10 + index)
      @hygiene -= (10 + index)
      @age += 1
    when 6
      puts "#{name.capitalize} проводить у лікарні 2 дні. Процедури пішли на користь - #{name.capitalize} оздоровився,"\
           " а заодно й виспався. \nТепер #{name.capitalize} хоче грати, адже в лікарні було дуже нудно...\n "
      @health = 100
      @cheerfulness = 100
      @hygiene = 100
      @joyfulness -= (30 + index)
      @satiety -= (10 + index)
      @age += 2
    else
      puts "Щоб обрати дію введіть число від 1 до 6"
    end
  end

  def explain_death
    if health <= 0
      abort "#{name.capitalize} помер від хронічних хвороб :("
    elsif joyfulness <= 0
      abort "#{name.capitalize} втік до інших господарів від нудьги :("
    elsif satiety <= 0
      abort "#{name.capitalize} помер з голоду :("
    elsif hygiene <= 0
      abort "Через неналежний догляд за #{name.capitalize} (відсутність гігієни)
          його забрала інспекція по нагляду за неповнолітніми тамагочі :("
    elsif cheerfulness <= 0
      abort "Від недостачі сну #{name.capitalize} збожеволів і проведе
            решту днів у психлікарні :("
    elsif age > 10
      abort "#{name.capitalize} помер від старості :("
    else
      abort "#{name.capitalize} помер з невідомих причин :("
    end
  end

  def live?
    health  > 0 && joyfulness > 0 && satiety > 0 && hygiene > 0 && cheerfulness > 0 && age < 10
  end
end
