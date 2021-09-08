#encoding: cp866
puts "Идёт форматирование: "
100.times do |y|
	x = rand(0.05..0.1)
	print "#{y}%\r/"
	sleep x
	print "\r-"
	sleep x 
	print "\r\\"
	sleep x 
	print "\r| - "
	sleep x
end

print "\r100%"
