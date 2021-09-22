date = Time.now
file_name = date.strftime("%d-%m-%Y")
time = date.strftime("%H:%M")
message = Array.new
separator = "\nDate: #{file_name} - Time: #{time}\n========================\n"

puts "Hello, friend!\nI'm your diary, here you can write down everything that bothers you, your thoughts, reasoning, and everything in general!"
puts "After each sentence, press 'Enter'\nWhen you're done, just type 'end' !"

current_path = File.dirname(__FILE__) 
file_path = current_path + "/data/" + file_name

print "Your message: "
text = gets.chomp
message << text

while text != 'end'
	text = gets.chomp
	message << text
end
message.pop
message << separator

file = File.open file_path, "a"
file.puts message
file.close
