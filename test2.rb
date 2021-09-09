def launch(options={})
	angle = options[:angle_count] || 90
	astronauts = options[[:belka, :strelka]] || [:belka, :strelka]
	delay = options[:delay_count] || 5
	#(a * 410) + (b * 58) + (c * 45) + 29
end

x = launch(angle_count: 100, delay_count: 10)

launch