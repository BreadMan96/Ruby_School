require 'translit'

print "Enter text: "
text = gets.chomp

puts Translit.convert(text)