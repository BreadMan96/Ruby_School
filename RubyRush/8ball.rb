answear = [
	:Yes,
	:No
]

print "What would you like to ask me, my dear friend?\n(Keep in mind, I can only answer yes or no): "
question = gets.chomp

puts "I think that: #{answear.sample}"
