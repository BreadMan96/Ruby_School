contacts = {
	"Panarin" => [{
		name: 'Artemiy Panarin',
		email: 'panarin@nhl.com',
		phone: 395486876
	}],
	"Poirier" => [{
		name: 'Dustin Poirier',
		email: 'poirier@ufc.com',
		phone: 374784678
	}],
	"Robbie" => [{
		name: 'Margot Robbie',
		email: 'robbie@actress.com',
		phone: 364143976
	}],
}

print "Enter last name: "
last_name = gets.strip.capitalize

contacts[last_name].each do |key|
	puts "\nName: #{key[:name]}\nEmail: #{key[:email]}\nPhone: #{key[:phone]}}"
end
