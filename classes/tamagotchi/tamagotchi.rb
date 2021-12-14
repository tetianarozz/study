class Tamagotchi
  attr_accessor :name, :health, :joyfulness, :satiety, :hygiene, :cheerfulness

  def initialize(name, health, joyfulness, satiety, hygiene, cheerfulness, age)
    @name = name
    @health = health
    @joyfulness = joyfulness
    @satiety = satiety
    @hygiene = hygiene
    @cheerfulness = cheerfulness
    @age = age
  end

  def show_statistics
    cls

    puts "Вихованець: #{name.capitalize}
         \n           ｡◕‿◕｡\n
     Показники:
     Здоров'я: #{health}
     Радість: #{joyfulness}
     Бадьорість: #{cheerfulness}
     Ситість: #{satiety}
     Гігієна: #{hygiene}
     \nВік вихованця: #{@age} день"

    put_number
  end

  def result(choise)
    case choise
    when 1 #Лікувати
      @health = 100
      @joyfulness -= 10
      @cheerfulness -= 10
      @satiety -= 10
      @hygiene -= 10
      @age += 1
    when 2 #Грати
      @joyfulness = 100
      @health -= 10
      @cheerfulness -= 10
      @satiety -= 10
      @hygiene -= 10
      @age += 1
    when 3  #Вкласти спати
      @cheerfulness = 100
      @health -= 10
      @joyfulness -= 10
      @satiety -= 10
      @hygiene -= 10
      @age += 1
    when 4  #Годувати
      @satiety = 100
      @health -= 10
      @joyfulness -= 10
      @cheerfulness -= 10
      @hygiene -= 10
      @age += 1
    when 5  #Купати
      @hygiene = 100
      @health -= 10
      @joyfulness -= 10
      @cheerfulness -= 10
      @satiety -= 10
      @age += 1
    when 6
      puts "#{name.capitalize} заблукав у лісі, повернувся додому через 3 дні брудний, стомлений та голодний :("
      @hygiene -= 30
      @satiety -= 50
      @cheerfulness -= 50
      @age += 1
    else
      puts " error"
    end
  end

  def explain_death
    if @health <= 0
      abort "#{name.capitalize} помер від хронічних хвороб :("
    elsif @joyfulness <= 0
      abort "#{name.capitalize} втік до інших господарів від нудьги :("
    elsif @satiety <= 0
      abort "#{name.capitalize} помер з голоду :("
    elsif @hygiene <= 0
      abort "Через неналежний догляд за #{name.capitalize} (відсутність гігієни)
          його забрала інспекція по нагляду за неповнолітніми тамагочі :("
    elsif @cheerfulness <= 0
      abort "Від недостачі сну #{name.capitalize} збожеволів і проведе
            решту днів у психлікарні :("
    elsif @age > 10
      abort "#{name.capitalize} помер від старості :("
    else
      abort "#{name.capitalize} помер з невідомих причин :("
    end
  end

  def cls
    system('clear') || system('cls')
  end

  def put_number
    puts "\nГрати далі - натисніть 1"
    number = gets.to_i

    until number == 1 do
      puts "Грати далі - натисніть 1"
      number = gets.to_i
    end
  end
end
