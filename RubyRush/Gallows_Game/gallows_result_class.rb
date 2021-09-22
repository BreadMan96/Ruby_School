class ResultPrinter
  def initialize
    @status_image = []
    @win = []

    current_path = File.dirname(__FILE__)
    counter = 0

    while counter <= 5 do
      file_name = current_path + "/data/#{counter}"

      if File.exist?(file_name)
        f = File.new(file_name, "r")
        @status_image << f.read
        f.close
      else
        @status_image << "\n [ image not found ] \n"
      end

      counter += 1
    end
  end

  def print_status(game)
    cls

    puts "\nWord: #{get_word_for_print(game.letters, game.good_letters)}"

    puts "Errors: #{game.bad_letters.join(', ')}"

    print_viselitsa(game.errors)

    if game.status == -1
      puts "\nYou lose :(\n"
      puts 'Word: ' + game.letters.join('')
      puts
    elsif game.status == 1
      cls
      puts "\nWord: #{get_word_for_print(game.letters, game.good_letters)}"
      puts "Congratulations, you WIN!!\n\n"
      current_path = File.dirname(__FILE__)
      file_name = current_path + "/data/game_win"
      f = File.new(file_name, "r")
      @win << f.read
      f.close
      puts @win
    else
      puts "You have #{(5 - game.errors)} attempts left"
    end
  end

  def get_word_for_print(letters, good_letters)
    result = ''

    for item in letters do
      if good_letters.include?(item)
        result += item + ' '
      else
        result += '__ '
      end
    end

    return result
  end

  def print_viselitsa(errors)
    puts @status_image[errors]
  end

  def cls
    system('clear') || system('cls')
  end
end