questions = [
	"If your partner casts a glance at a woman he doesn't know, do you scandalize him in the street?",
	"If your partner is late for dinner, are you sure he was with someone else?",
	"Do you ask him about his work, about his colleagues?",
	"You think you have to spend every free minute together?",
	"Is he a light in the window for you?",
	"Do you happen to check his correspondence and go through his things?",
	"The more often he talks about his feelings, the less you believe it?",
	"Do you only want him to be interested in what you are interested in?",
	"Do you always ask him where he goes and who he meets?",
	"If you have a grudge against him, you are silent for days?",
	"Are you tormented by thoughts of his former lover?",
	"He says he is not jealous of you because he trusts you. Does this mean to you that the love is gone?",
]

results = [
	"\nTest results:\nYou are morbidly jealous. Do not think that if he loves you, he automatically becomes your property. You think you are unattractive and are afraid that he will leave you for some beautiful girl. You are not sure of anything, especially him. Think about it, because you can not be so jealous and aggressive, it can lead to conflicts and even break up the relationship.",
	"\nTest results:\nYour jealousy has a mobilizing effect on you, but it is not the only one that drives your behavior. In a moment of weakness you also happen to make a scandal. But when you calm down, you realize that there was no reason for your jealousy.",
	"\nTest results:\nYou are completely unfamiliar with feelings of jealousy. But anxiety and worry can build up over time. You need to address your concerns with your partner."
]

yes = 0

questions.each_with_index do |x, i|
	i += 1
	print "#{i}. #{x} (yes/no): "
	answear = gets.strip

	while answear != "yes" && answear != "no"
		puts "You either have to write yes or no! Try again!"
		print "#{i}. #{x} (yes/no): "
		answear = gets.strip
	end

	if answear == "yes"
		yes += 1
	end
end

if yes >= 10 
	puts results[0]
elsif yes >= 9 && yes < 10
	puts results[1]
elsif yes < 5
	puts results[2]
end
