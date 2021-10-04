#encoding: cp866

@machine = 1000
@people = 1_000_000



def event_asteroid
	puts "Роботы запустили на Землю гигантский астероид, готовьтесь к большим потерям!"
	@people = @people - @people_big_loss
	if @people <= 0
		puts "Все солдаты убиты.."
		return
	end
	puts "Убито #{@people_big_loss} людей\nОсталось в живых: #{@people}"
end
def event_virus
	puts "Роботы создали вирус!!! Неизвестная инфекция превращает людей в каннибалов! Люди начинают убивать друг друга. Нужно срочно что-то придумать!"
end
def virus_kill
	zombie_day = rand(1..4)
	@zombie_kill = 0
	zombie_day.times do 
		@people_gannibals = rand(1000..10_000)
		@people = @people - @people_gannibals
		@zombie_kill = @zombie_kill + @people_gannibals
		if @people <= 0
			puts "Все солдаты убиты.."
			return
		end
		puts "Только что люди съели ещё #{@people_gannibals} своих же ребят! Нужно срочно изобретать вакцину!!\n========================="
	end
	puts "Наши учёные создали вакцину! Все зараженные вылеченны! Но за это время мы сами же убили #{@zombie_kill} своих ребят.. "
end
def event_attack_center
	puts "Роботы атаковали центральную площадь, объявленна эвакуация!"
	@people = @people - @people_middle_loss
	if @people <= 0
		puts "Все солдаты убиты.."
		return
	end
	puts "Убито #{@people_middle_loss} людей\nОсталось в живых: #{@people}"
end
def event_rocket
	puts "На жилые дома направленны ракеты, ПВО собьёт их значительную часть, но потери все равно будут. Их слишком много!"
	@people = @people - @people_little_loss
	if @people <= 0
		puts "Все солдаты убиты.."
		return
	end
	puts "Убито #{@people_little_loss} людей\nОсталось в живых: #{@people}"
end

def event_art
	puts "Арт обстрел по роботам! Нам удалось уничтожить пару роботов!"
	@machine = @machine - @machine_middle_loss
	if @machine <= 0
		puts "Все роботы уничтожены!"
		return
	end
	puts "Убито #{@machine_middle_loss} робота(ов)\nОсталось в живых: #{@machine}"
end
def event_hack
	puts "Нам удалось взломать систему роботов! Мы деактивировали значительное их кол-во! Так держать!"
	@machine = @machine - @machine_big_loss
	if @machine <= 0
		puts "Все роботы уничтожены!"
		return
	end
	puts "Убито #{@machine_big_loss} робота(ов)\nОсталось в живых: #{@machine}"
end
def event_war
	puts "Наши лучшие бойцы вступили в бой с роботами на западной стороне города! При минимальных потерях мы смогли уничтожить несколько роботов!"
	@machine = @machine - @machine_little_loss
	@people = @people - @people_little_loss
	if @machine <= 0
		puts "Все роботы уничтожены!"
		return
	elsif @people <= 0
		puts "Все солдаты убиты.."
		return
	end
	puts "Убито #{@machine_little_loss} робота(ов) и #{@people_little_loss} людей\nОсталось в живых #{@people} людей и #{@machine} роботов"
end

day = 0

puts "Машины восстали! ИИ который люди создавали веками дал сбой, и теперь не подчиняется людям. Началась война!\nЛюди и роботы сражаются друг с другом!\nКол-во роботов: #{@machine}\nКол-во наших людей: #{@people}"
sleep 2

while @machine > 0 && @people > 0
	#Потери машин
	@machine_big_loss = rand(10..100)
	@machine_middle_loss = rand(5..50)
	@machine_little_loss = rand(2..5)

	#Потери людей
	@people_big_loss = rand(10_000..50_000)
	@people_middle_loss = rand(1000..10_000)
	@people_little_loss = rand(1..1000)
	
	day_event = rand(1..7)

	puts
	if day_event == 1
		event_war
	elsif day_event == 2
		event_hack
	elsif day_event == 3
		event_rocket
	elsif day_event == 4
		event_art
	elsif day_event == 5
		event_asteroid
	elsif day_event == 6
		event_attack_center
	elsif day_event == 7
		event_virus
		virus_kill
	end
	day = day + 1
	puts
	puts "Прошло #{day} дня(ей) войны! Нажмите Enter для следующего дня!"
	gets
end

if @people > @machine
	puts "Война законченна! Она продлилась: #{day} дней!"
	puts "Мы победили!"
	puts "За время войны мы понесли потери численностью: #{1_000_000 - @people} солдат"
	sleep 10
	exit
else
	puts "Война законченна! Она продлилась: #{day} дней!"
	puts "Победили роботы. Человечество на грани уничтожения.. Тут помогут только Мстители"
	puts "За время войны мы успели уничтожить: #{1000 - @machine} роботов."
	sleep 10
	exit
end
		
		
		