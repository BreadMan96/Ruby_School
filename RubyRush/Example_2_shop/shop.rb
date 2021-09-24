require_relative 'lib/product.rb'
require_relative 'lib/film.rb'
require_relative 'lib/book.rb'

films = []
books = []

separator = "============================="

product1 = Product.new(price: 250, amount: 4)
# films << product1
# puts "Film: Fury\nPrice: #{films[0].price}\n"

book1 = Book.new(price: 1000, amount: 10, name_book: "Good to Great", genre_book: "Business", author_book: "Jim Collins")
book2 = Book.new(price: 750, amount: 10, name_book: "Habits of a Happy Brain", genre_book: "Psychology", author_book: "Loretta Graziano Breuning")
books << book1
books << book2

film1 = Film.new(price: 200, amount: 100, name_film: "Fury", year_film: 2014, film_director: "David Ayer")
film2 = Film.new(price: 450, amount: 100, name_film: "Avengers: Endgame", year_film: 2019, film_director: "Anthony Russo, Joe Russo")
films << film1
films << film2

books.each_with_index do |x, y|
	puts "Book: #{x.name_book}, Genre: #{x.genre_book}\nAuthor: #{x.author_book}\nPrice: #{x.price} (Amount: #{x.amount})\n#{separator}"
	puts	
end
