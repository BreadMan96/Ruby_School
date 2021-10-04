require_relative 'gallows_game_class'
require_relative 'gallows_result_class'

current_path = File.dirname(__FILE__) 
file_path = current_path + "/data/words_for_gallows"

file = File.open file_path, "r"
lines = file.readlines

printer = ResultPrinter.new 

puts "Gallows Game. Version 3.0.0 © BreadMan\n\n"
sleep 1

slovo = lines.sample.strip

game = Game.new(slovo)

while game.status == 0
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)