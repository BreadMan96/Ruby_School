#encoding: cp866

print "Введите длину желаемого участка: "
dlina = gets.strip.to_i
print "Введите ширину желаемого участка: "
shirina = gets.strip.to_i

kvadmetr = dlina * shirina

puts "Вас интересует участок: #{kvadmetr} квадратных метров"
if kvadmetr < 50 
	puts "Стоимость данного участка составляет: 1000$"
elsif kvadmetr >= 50 && kvadmetr < 100
	puts "Стоимость данного участка составляет: 1500$"
elsif kvadmetr >= 100
	puts "Стоимость данного участка составляет: #{kvadmetr * 25}$"
end



