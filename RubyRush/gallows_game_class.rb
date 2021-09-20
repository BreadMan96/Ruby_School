class Game
  def initialize(slovo)

    @letters = get_letters(slovo)

    @errors = 0

    @good_letters = []
    @bad_letters = []

    #индикатор состояния игры (см. метод get_status)
    @status = 0
  end

  def get_letters(slovo)
    if slovo == nil || slovo == ''
      abort 'Enter the word!'
    end

    return slovo.split('')
  end

  # Метод, возвращающий статус игры 
  #  0 – игра активна
  # -1 – игра закончена поражением
  #  1 – игра закончена победой
  def status
    return @status
  end

  def next_step(letter)
    if @status == -1 || @status == 1
      return
    end

    if @good_letters.include?(letter) || @bad_letters.include?(letter)
      return
    end

    if @letters.include?(letter)
      @good_letters << letter

      if @good_letters.uniq.sort == @letters.uniq.sort
        @status = 1
      end
    else
      @bad_letters << letter
      @errors += 1
      if @errors >= 7
        @status = -1
      end
    end
  end

  def ask_next_letter
    print "\nType a letter: "

    letter = ''
    while letter == ''
      letter = gets.strip.to_s
    end

    next_step(letter)
  end


  def errors
    @errors
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
end