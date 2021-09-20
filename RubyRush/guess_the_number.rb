def what(i)
	if i == @x
		puts "Yes, you guessed it! This is number: #{@x}"
		exit
	elsif i < @x
		puts "No, more!"
	elsif i > @x
		puts "No, less!"
	else
		puts "I don't know what you're talking about!"
	end 
end

@x = rand(1..20)

5.times do |z|
	print "#{z+1} try:  "
	answear = gets.strip.to_i
	what answear
end

puts "I was wishing for: #{@x}\nYour attempts are over! Come back tomorrow!"
