hh = {
	transactions: [{
	name: 'Boots',
	status: false,
	price: 40
	}, {
	name: 'Salary',
	status: true,
	price: 2500
	}, {
	name: 'Products',
	status: false,
	price: 50
	}, {
	name: 'Passive income',
	status: true,
	price: 500
	}],
	visibility_fiter: :consumption
}

@i = 1

def counter
	@i += 1
end

if hh[:visibility_fiter] == :show_all
	hh[:transactions].each do |x|		
		puts "#{@i}. #{x[:name]}\n#{x[:price]}"
		counter
	end
elsif hh[:visibility_fiter] == :consumption
	hh[:transactions].each do |x|
		if x[:status] == false
			puts "#{@i}. #{x[:name]}\n-#{x[:price]}"
			counter
		end
	end
elsif hh[:visibility_fiter] == :replenishment
	hh[:transactions].each do |x|
		if x[:status] == true
			puts "#{@i}. #{x[:name]}\n+#{x[:price]}"
			counter
		end
	end
end


#False - consumption
#True - replenishment