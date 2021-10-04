#encoding: cp866
hh = {basket_ball: 100, golf_ball: 45, shaiba: 150}
print "Какие аксессуары Вы хотите приобрести:\n1. Баскетбольный мяч\n2. Мяч для гольфа\n3. Шайба\nВведите цифру товара, если товаров несколько, то введите их через запятую: "
acc = gets.strip.to_s
arr = Array.new(acc.split(','))

arr.each_index do |y|  
	arr[y] = arr[y].to_i
end

if arr[0] == 1
	print "В каком кол-во Вы хотите заказать баскетбольные мячи?: "
	basket = gets.strip.to_i
elsif arr[0] == 2
	print "В каком кол-во Вы хотите заказать мячи для гольфа?: "
	golf = gets.strip.to_i
elsif arr[0] == 3
	print "В каком кол-во Вы хотите заказать шайбы?: "
	shaiba = gets.strip.to_i
end
if arr[1] == 1
	print "В каком кол-во Вы хотите заказать баскетбольные мячи?: "
	basket = gets.strip.to_i
elsif arr[1] == 2
	print "В каком кол-во Вы хотите заказать мячи для гольфа?: "
	golf = gets.strip.to_i
elsif arr[1] == 3
	print "В каком кол-во Вы хотите заказать шайбы?: "
	shaiba = gets.strip.to_i
end
if arr[2] == 1
	print "В каком кол-во Вы хотите заказать баскетбольные мячи?: "
	basket = gets.strip.to_i
elsif arr[2] == 2
	print "В каком кол-во Вы хотите заказать мячи для гольфа?: "
	golf = gets.strip.to_i
elsif arr[2] == 3
	print "В каком кол-во Вы хотите заказать шайбы?: "
	shaiba = gets.strip.to_i
end

summa = 0

arr.each_with_index do |x, y|
	if arr[y] == 1
		summa += basket * hh[:basket_ball]
	elsif arr[y] == 2
		summa += golf * hh[:golf_ball]
	elsif arr[y] == 3
		summa += shaiba * hh[:shaiba]
	end
end

puts "Сумма Вашего заказа: #{summa}"






