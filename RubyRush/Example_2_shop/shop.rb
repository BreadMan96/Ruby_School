require_relative 'lib/product.rb'
require_relative 'lib/film.rb'
require_relative 'lib/book.rb'


def sort(param, what_sorting)
	case param
	when 1
	  what_sorting.sort_by! { |product| product.price } # цена по возрастанию
	when 2
	  what_sorting.sort_by! { |product| product.amount } # кол-во по возрастанию
	end
end

def print_book(param)
	sort(1, param)
	param.each do |x,y|
		puts "Book: #{x.name_book} | Genre: #{x.genre_book}\nAuthor: #{x.author_book}\nPrice: #{x.price} (Amount: #{x.amount})\n#{@separator}"
		puts
	end
end

def print_film(param)
	sort(1, param)
	param.each do |x, y|
		puts "Film: #{x.name_film} (#{x.year_film})\nDirector: #{x.director_film}\nPrice: #{x.price} (Amount: #{x.amount})\n#{@separator}"
		puts	
	end
end


films = []
books = []
all_products = {
	Films: films,
	Books: books
}
promocods = {'BREADMAN' => 50, 'BUSINESS' => 15, 'NHL2022' => 22, 'RUBY' => 25}

@separator = "============================="

book1 = Book.new(price: 1000, amount: 100, name_book: "Good to Great", genre_book: "Business", author_book: "Jim Collins")
book2 = Book.new(price: 7050, amount: 10, name_book: "Habits of a Happy Brain", genre_book: "Psychology", author_book: "Loretta Graziano Breuning")
#book1.price = 1500 - возможность менять цену
books.push(book1,book2)

film1 = Film.new(price: 200, amount: 100, name_film: "Fury", year_film: 2014, director_film: "David Ayer")
film2 = Film.new(price: 450, amount: 1000, name_film: "Avengers: Endgame", year_film: 2019, director_film: "Anthony Russo, Joe Russo")
films.push(film1,film2)

print "Choose a product category:\n1. Books\n2. Films\n3. Show all\nEnter number (1,2 or 3): "
category = gets.strip.to_i

print "Do you have a promocode?(if yes, enter it): "
promocod = gets.strip.upcase

if promocods.include?(promocod)
	all_products.each do |key, value|
		value.each do |x|
			x.price = x.price - (x.price * promocods[promocod] / 100)
		end
	end
	puts "Promocode '#{promocod}' has been successfully applied! Your promocode discount: #{promocods[promocod]}%"
end

puts @separator

sleep 2

case category
when 1
	print_book(books)
when 2
	print_film(films)
when 3
	all_products.each do |key,value|
		puts key.upcase
		puts @separator
		if key == :Films
			print_film(value)
		elsif key == :Books
			print_book(value)
		end
	end
end