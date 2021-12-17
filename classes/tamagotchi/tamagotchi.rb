require_relative 'game'

class Tamagotchi

  attr_accessor :name, :health, :joyfulness, :satiety, :hygiene, :cheerfulness, :age

  def initialize(args = {})
    @name = args[:name] || nil
    @health = args[:health] || 100
    @joyfulness = args[:joyfulness] || 100
    @satiety = args[:satiety] || 100
    @hygiene = args[:hygiene] || 100
    @cheerfulness = args[:cheerfulness] || 100
    @age = args[:age] || 1
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
      puts "Гра пройшла чудово, #{name.capitalize} щасливий. Тепер не завадило б поїсти і прийняти ванну... \n "
      @joyfulness = 100
      @health -= (rand(5...10) + index)
      @cheerfulness -= (rand(5...10) + index)
      @satiety -= (rand(15...25) + index)
      @hygiene -= (rand(15...25) + index)
      @age += 1
    when 2
      puts "Упс, #{name.capitalize} заблукав у лісі, повернувся додому через 3 дні брудний, стомлений та голодний :(\n "
      @joyfulness = 100
      @hygiene -= (rand(20...30) + index)
      @satiety -= (rand(20...30) + index)
      @cheerfulness -= (rand(20...30) + index)
      @health -= (rand(20...30) + index)
      @age += 3
    when 3
      puts "#{name.capitalize} нарешті наївся і тепер хоче спати :)\n "
      @satiety = 100
      @health -= (rand(5...10) + index)
      @cheerfulness -= (rand(10...15) + index)
      @hygiene -= (rand(10...15) + index)
      @age += 1
    when 4
      puts "Після гарячої ванни так хочеться спати...\n "
      @hygiene = 100
      @joyfulness -= (rand(5...10) + index)
      @cheerfulness -= (rand(20...30) + index)
      @satiety -= (rand(5...10) + index)
      @age += 1
    when 5
      puts "#{name.capitalize} виспався і готовий розважатись. Як щодо прогулянки?\n "
      @cheerfulness = 100
      @joyfulness -= (rand(20...30) + index)
      @satiety -= (rand(5...10) + index)
      @hygiene -= (rand(5...10) + index)
      @age += 1
    when 6
      puts "#{name.capitalize} проводить у лікарні 2 дні. Процедури пішли на користь - #{name.capitalize} оздоровився,"\
           " а заодно й виспався. \nТепер #{name.capitalize} хоче грати, адже в лікарні було дуууже нудно...\n "
      @health = 100
      @cheerfulness = 100
      @hygiene = 100
      @joyfulness -= (rand(20...30) + index)
      @satiety -= (rand(5...10) + index)
      @age += 2
    else
      puts "Щоб обрати дію введіть число від 1 до 6"
    end
  end

  def explain_death
    if health <= 0
      puts "#{name.capitalize} помер від хронічних хвороб :(\n
               ¯＼_(Ò﹏Ó)_/¯ \n "
    elsif joyfulness <= 0
      puts "#{name.capitalize} втік до інших господарів від нудьги :(\n
               ¯＼_( ツ )_/¯ \n "
    elsif satiety <= 0
      puts "#{name.capitalize} помер з голоду :(\n
               ¯＼_(⊙_◎)_/¯ \n "
    elsif hygiene <= 0
      puts "Через неналежний догляд за #{name.capitalize} (відсутність гігієни)"\
          "його забрала інспекція по нагляду за неповнолітніми тамагочі :(\n
               ¯＼_(ツ)_/¯ \n "
    elsif cheerfulness <= 0
      puts "Від недостачі сну #{name.capitalize} збожеволів і проведе "\
            "решту днів у психлікарні :(\n
               ¯＼_(ツ)_/¯ \n "
    elsif age >= 10
      puts "#{name.capitalize} помер від старості :(\n
             ¯＼_(Ò﹏Ó)_/¯ \n "
    else
      puts "#{name.capitalize} помер з невідомих причин :("
    end
  end

  def live?
    health  > 0 && joyfulness > 0 && satiety > 0 && hygiene > 0 && cheerfulness > 0 && age <= 10
  end
end
