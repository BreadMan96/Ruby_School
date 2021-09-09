str = 'the quick brown fox jumps over the lazy dog'
arr = str.chars

hh = Hash.new(0)
arr.each do |letter|
	hh[letter] += 1
end

puts "In this sentence: #{str}"
hh.each do |k, v|
	if k.nil?
		puts "No"
	end
	puts "Letter: '#{k}', found - #{v} times"
end