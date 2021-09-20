# Метод возвращает массив букв загаданного слова
def get_letters
  print "Guess the word: "
  slovo = gets.strip.to_s

  if slovo == nil || slovo == ''
    abort 'Enter the word!'
  end

  slovo = slovo.split("")
end

# Метод спрашивает у пользователя букву
def get_user_input
  letter = ''

  while letter == ''
    letter = gets.strip.to_s
  end

  return letter
end

# Метод проверяет введенную букву
#  0 — если буква есть в слове (или уже была названа) и игра продолжается
# -1 — если введенной буквы нет в слове
#  1 — если всё слово угадано целиком
def check_result(user_input, letters, good_letters, bad_letters)
  # Если введенная буква уже есть в списке «хороших» или «плохих» сходу
  # вернем 0, игра продолжится.
  if good_letters.include?(user_input) || bad_letters.include?(user_input)
    return 0
  end

  if letters.include? user_input
    good_letters << user_input

    if good_letters.uniq.sort == letters.uniq.sort
      return 1
    else
      puts "There is a letter!"
      return 0
    end
  else
    bad_letters << user_input
    puts "There is no such letter!"
    return -1
  end
end

# Метод возвращает загаданное слово для вывода на экран
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

# Метод выводит на экран текущий статус игры.
def print_status(letters, good_letters, bad_letters, errors)
  puts "\nWord: #{get_word_for_print(letters, good_letters)}"

  puts "Erros (#{errors}): #{bad_letters.join(', ')}"

  if errors >= 7
    puts 'You lose :('
  else
    if good_letters.uniq.sort == letters.uniq.sort
      puts "Congratulations, you WIN!\n\n"
    else
      puts "You have #{(7 - errors)} attempts left"
    end
  end
end