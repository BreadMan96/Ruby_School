require_relative 'lib/product.rb'
require_relative 'lib/film.rb'
require_relative 'lib/book.rb'


# collection.sort!(by: :price, order: :asc)
def sort(param, what_sorting)
	case param
	when 1
	  what_sorting.sort_by! { |product| product.price }
	when 2
	  what_sorting.sort_by! { |product| product.amount }
	end
end

def print_book(param)
	sort(2, param)
	param.each do |x,y|
		puts "Book: #{x.name_book}, Genre: #{x.genre_book}\nAuthor: #{x.author_book}\nPrice: #{x.price} (Amount: #{x.amount})\n#{@separator}"
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

@separator = "============================="

book1 = Book.new(price: 1000, amount: 10, name_book: "Good to Great", genre_book: "Business", author_book: "Jim Collins")
book2 = Book.new(price: 750, amount: 10, name_book: "Habits of a Happy Brain", genre_book: "Psychology", author_book: "Loretta Graziano Breuning")
book1.price = 150
books << book1
books << book2

film1 = Film.new(price: 200, amount: 100, name_film: "Fury", year_film: 2014, director_film: "David Ayer")
film2 = Film.new(price: 450, amount: 10, name_film: "Avengers: Endgame", year_film: 2019, director_film: "Anthony Russo, Joe Russo")
films << film1
films << film2

#@books.sort_by! { |product| product.price }   # рабочая

#sort(1, @books)

print "Choose a product category:\n1. Books\n2. Films\n3. Show all\nEnter number (1,2 or 3): "
category = gets.strip.to_i

puts @separator

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