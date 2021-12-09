class Game
  def initialize(slovo)
    @letters = get_letters(slovo)

    @errors = 0

    @good_letters = []

    @bad_letters = []

    @status = 0
  end

  def get_letters(slovo)
    if slovo == nil || slovo == ''
      abort 'Введіть загадане слово в якості аргумента під час ' \
        'запуску програми'
    end

    return slovo.split('')
  end

  def ask_next_letter
    puts "\n Введіть наступну букву"

    letter = ""

    while letter == "" do
      letter = STDIN.gets.chomp
    end

    next_step(letter)
  end

  def next_step(bukva)
    if @status == -1 || @status == 1
      return
    end

    if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
      return
    end

    if @letters.include?(bukva)

      @good_letters << bukva

      if @good_letters.size == @letters.uniq.size
        @status = 1
      end

    else
      @bad_letters << bukva

      @errors += 1
      if @errors >= 7
        @status = -1
      end
    end
  end

  def letters
    @letters
  end

  def good_letters
    @good_letters
  end

  def bad_letters
    @bad_letters
  end

  def status
    @status
  end

  def errors
    @errors
  end
end
