class Book < Product
	attr_reader :name_book, :genre_book, :author_book

	def initialize(params)
		@name_book = params[:name_book]
		@genre_book = params[:genre_book]
		@author_book = params[:author_book]
	end
end