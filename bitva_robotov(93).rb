#encoding: cp866

@team_first = Array.new(10, 100)
@team_second = Array.new(10, 100)
@win = 0

while @win != 1 && @win != 2
	print "На какую команду делаешь ставку (введи цифру 1 или 2): "
	@win = gets.strip.to_i
	if @win != 1 && @win != 2
		puts "Неправильно значение. Нужно ставить либо на 1-ю команду, либо на 2-ю. Попробуй ещё раз!"
	end
end

print "Какую сумму ставишь: "
@money = gets.strip.to_i


def hit_first_team
	i = rand(0..9)
	if @team_second[i] <= 0
		puts "Удар по роботу №#{i}"
		puts "Эмм, нет, дружок. В этот раз мимо."
	else
		damage = rand(10..40)
		@team_second[i] = @team_second[i] - damage
		if @team_second[i] > 0
			puts "Удар по роботу №#{i}\nПревосходное попадание!\nНанесено урона: #{damage}\nОсталось hp: #{@team_second[i]}"
		elsif @team_second[i] <= 0
			puts "Удар по роботу №#{i}\nПревосходное попадание!\nНанесено урона: #{damage}\nРобот убит!"
		end
		action = @team_second.count { |action| action > 0 }
		puts "У команды синих осталось: #{action} робота(ов)!"
		puts
	end
end

def hit_second_team
	i = rand(0..9)
	if @team_first[i] <= 0
		puts "Удар по роботу №#{i}"
		puts "Эмм, нет, дружок. В этот раз мимо."
	else
		damage = rand(10..40)
		@team_first[i] = @team_first[i] - damage
		if @team_first[i] > 0
			puts "Удар по роботу №#{i}\nПревосходное попадание!\nНанесено урона: #{damage}\nОсталось hp: #{@team_first[i]}"
		elsif @team_first[i] <= 0
			puts "Удар по роботу №#{i}\nПревосходное попадание!\nНанесено урона: #{damage}\nРобот убит!"
		end
		action = @team_first.count { |action| action > 0 }
		puts "У команды красных осталось: #{action} робота(ов)!"
		puts
	end
end

def first_win? 
	@team_first.each do |x|
		if x > 0
			return true
		end
	end
	return false
end

def second_win? 
	@team_second.each do |x|
		if x > 0
			return true
		end
	end
	return false
end

puts "Ставки сделаны. Поехали!"
z = 0

while true do 	
	puts "Ход команды красных"
	hit_first_team
	if second_win? == false
		if @win == 1
			puts "Ваша ставка сыграла. Ваш выигрыш составил: #{@money * 2}$"
		else 
			puts "Ваша ставка проиграла"
		end
		puts "Победа первой команды роботов!\nБитва длилась #{z} раунд(ов)\nНажмите Enter для выхода!"
		gets
		exit
	end
	puts "Ход команды синих"
	hit_second_team
	if first_win? == false
		if @win == 2
			puts "Ваша ставка сыграла. Ваш выигрыш составил: #{@money * 2}$"
		else 
			puts "Ваша ставка проиграла"
		end
		puts "Победа второй команды роботов!\nБитва длилась #{z} раунд(ов)\nНажмите Enter для выхода!"
		gets
		exit
	end
	puts "Жми Enter для нового раунда!"
	z = z + 1
	puts
	gets
end


