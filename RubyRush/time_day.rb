time = Time.now
week_day = time.wday

if week_day <= 5 
	puts "Today is a work day, friend.\nBut don't worry, you'll be resting soon!"
else 
	puts "Today is the day off, friend! Get some rest, you've earned it!"
end
