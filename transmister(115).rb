arr = [
	%w(2 a b c),
	%w(3 d e f), 
	%w(4 g h i), 
	%w(5 j k l),
	%w(6 m n o),
	%w(7 p q r s),
	%w(8 t u v),
	%w(9 w x y z)
]

print "Vvedite slovo: "
val = gets.strip.downcase
slovo = Array.new(val.chars)
          
slovo.each do |i|
	arr.each do |x|
		z = x.include? i
		if z == true
			print "#{x[0]}"
		end
	end
end
                  

