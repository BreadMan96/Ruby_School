def launch(options={})
	angle = options[:angle] || 90
	astronauts = options[:astronauts] || [:belka, :strelka]
	delay = options[:delay] || 5
	puts "#{angle} degree angle, astronauts: #{astronauts}, will go into space in:"
	delay.times do |i|
		puts delay-i
		sleep 1
	end
	puts "Rocket Launch! Takeoff! The rocket has successfully taken off!"
end

launch(delay: 10)
