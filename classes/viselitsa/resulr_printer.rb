class ResultPrinter
  def print_status(game)
    cls
    puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"

    puts "Помилки: #{game.bad_letters.join(', ')}"

    print_viselitsa(game.errors)

    if game.status == -1

      puts "\nВи програли :(\n"
      puts 'Загадане слово було: ' + game.letters.join('')
      puts
    elsif game.status == 1

      puts "Вітаємо, ви виграли!\n\n"
    else

      puts 'У вас залишилось помилок: ' + (7 - game.errors).to_s
    end
  end

  def get_word_for_print(letters, good_letters)
    result = ''

    for letter in letters do
      if good_letters.include?(letter)
        result += letter + ' '
      else
        result += '__ '
      end
    end

    return result
  end

  def cls
    system('clear') || system('cls')
  end

  def print_viselitsa(errors)
    case errors
    when 0
      puts '
        _______
        |/
        |
        |
        |
        |
        |
        |
        |
      __|________
      |         |
      '
    when 1
      puts '
        _______
        |/
        |     ( )
        |
        |
        |
        |
        |
        |
      __|________
      |         |
      '
    when 2
      puts '
        _______
        |/
        |     ( )
        |      |
        |
        |
        |
        |
        |
      __|________
      |         |
      '
    when 3
      puts '
        _______
        |/
        |     ( )
        |      |_
        |        \\
        |
        |
        |
        |
      __|________
      |         |
      '
    when 4
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    /   \\
        |
        |
        |
        |
      __|________
      |         |
      '
    when 5
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |
        |
        |
      __|________
      |         |
      '

    when 6
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      '
    when 7
      puts '
        _______
        |/     |
        |     (_)
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      '
    end
  end
end
