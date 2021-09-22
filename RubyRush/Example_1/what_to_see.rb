current_path = File.dirname(__FILE__) 
file_path = current_path + "/data/list_of_films"

file = File.open file_path, "r"
lines_file = file.readlines
x = rand(0..15)

if x % 2 == 0
	genre = lines_file[x+1]
	film = lines_file[x]
else
	genre = lines_file[x]
	film = lines_file[x-1]
end

puts "Recommended viewing today: #{film}\nGenre: #{genre}"