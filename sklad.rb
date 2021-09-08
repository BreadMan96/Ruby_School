#cart-array
cart = [
{ type: :soccer_ball, qty: 2 },
{ type: :golf_ball, qty: 2 }
]

#inventory-hash
inventory = {
soccer_ball: { available: 4, price_per_item: 100 },
tennis_ball: { available: 4, price_per_item: 30 },
golf_ball: { available: 4, price_per_item: 5 }
}

total = 0
tracking = rand(102857..955482)

cart.each do |x|
	if x[:qty] > inventory[x[:type]][:available]
		puts "We don't have that much product in inventory!"
		puts "We will order from the main warehouse and call you back as soon as we have the quantity you need!"
		sleep 5
		exit
	end
	total += x[:qty] * inventory[x[:type]][:price_per_item]
end 

puts "Your order has been successfully formed!\nThe amount of your order: #{total}$\nYou can track your order by it's number: #{tracking}"
sleep 5
exit


