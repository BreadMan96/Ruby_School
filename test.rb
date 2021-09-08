#cart-array
cart = [
{ type: :soccer_ball, qty: 2 },
{ type: :golf_ball, qty: 2 }
]

order = Array.new

#inventory-hash
inventory = {
Soccer_ball: { available: 4, price_per_item: 100 },
Tennis_ball: { available: 4, price_per_item: 30 },
Golf_ball: { available: 4, price_per_item: 5 }
}

item = {
	Soccer_ball: 1,
	Tennis_ball: 2,
	Golf_ball: 3
}

inventory.keys.map.with_index { |key, i| puts "#{i+1}. #{key}" }

print "What would you like to buy?(enter number): "
buy = gets.strip.to_i

print "How much do you want to buy: "
qty_item = gets.strip.to_i

order = [
	{ type: item.key(buy), qty: qty_item }
]

puts order

puts inventory[order(key)]

#if order[type] > inventory[:order[type]] [:available]
#	puts 10
#end

total = 0
tracking = rand(102857..955482)









