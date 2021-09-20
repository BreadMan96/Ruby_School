require_relative 'gallows_game_class'
require_relative 'gallows_result_class'

printer = ResultPrinter.new

puts "Gallows Game. Version 2.0.0 © BreadMan\n\n"
sleep 1

print "Guess the word: "
slovo = gets.strip.downcase.to_s

game = Game.new(slovo)

while game.status == 0
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)