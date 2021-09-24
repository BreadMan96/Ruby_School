class Film < Product
	attr_reader :name_film, :year_film, :director_film

	def initialize(params)
		super
		@name_film = params[:name_film]
		@year_film = params[:year_film]
		@director_film = params[:director_film]
	end
end