class Bodybuilder
  def initialize
    @biceps = 0
    @triceps = 0
    @deltoid = 0
  end

  def pump(muscle)
    case muscle
    when 'triceps'
      @biceps += 1
    when 'biceps'
      @triceps += 1
    when 'deltovidka'
      @deltoid += 1
    end
  end

  def show_body
    puts "Біцепси: #{@biceps}"
    puts "Трицепси: #{@triceps}"
    puts "Дельтовидка: #{@deltoid}"
  end
end