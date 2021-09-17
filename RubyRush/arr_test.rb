def new(n)
	arr = [77,20,15,45]
	arr2 = Array.new
	n.times do |x|
		arr2 << arr[x]
	end
	puts arr2
end


print "How many first elements to take?: "
elements = gets.strip.to_i

puts new elements

