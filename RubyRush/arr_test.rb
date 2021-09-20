
print "Guess the word: "
slovo = gets.strip.to_s

# Разбиваем слово на буквы специальным методом split, который есть у всех
# объектов класса Строка.
slovo = slovo.split("")

puts slovo[1]