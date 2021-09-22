print "Enter your email: "
email = gets.strip

x = /^[\w\d]+@[\w\d]+\.[\w]+/ =~ email

if x == 0
  puts "Congratulations"
else 
  puts "Incorrect email!"
end

# Note:
# Documentation: https://www.ralfebert.de/snippets/ruby-rails/regex_cheat_sheet/

# \w — аналогично выражению [a-zA-Z], то есть любая буква английского алфавита, независимая от case, 
# но помимо этого также допускается наличие знака нижнего подчеркивания 
# \d — аналогично выражению [0-9], то есть проверяет строку на наличие любых чисел
