$quantity = 0

class Person
  def initialize(firstname, lastname, age)
    $quantity += 1
    @firstname = firstname
    @lastname = lastname
    @age = age
  end

  def hello
    if @age < 60
      puts "#{@lastname}, young (#{@age} age)"
    else 
      puts "#{@firstname} #{@lastname}, old (#{@age} age)"
    end
  end

  def film=(film)
    @film = film
  end

  def film
    return @film
  end
end

class Film
  def initialize(film_title, lastname_director)
    @film_title = film_title
    @lastname_director = lastname_director
  end

  def best_film
    @best_films = Array.new
    print "Your favorite director: "
    director = gets.chomp
    puts "Name three of his favorite movies: "
    3.times do |i|
      print "#{i+1} film: "
      film = gets.chomp
      @best_films << film
    end
  end

  def show
    puts "And tonight, we recommend watching:\nFilm: #{@best_films.sample}\nDirector: #{@lastname_director}"
    puts
  end

  def film_title
    return @film_title
  end

  def lastname_director
    return @lastname_director
  end
end

person1 = Person.new("Artemiy", "Panarin", 27)
person2 = Person.new("Dustin", "Poirier", 28)
person3 = Person.new("Margot", "Robbie", 34)
person4 = Person.new("Arnold", "Schwarzenegger", 74)

person1.film = Film.new("The Fast and the Furious", "Vin Diesel")
person1.hello
puts "Favourite film: #{person1.film.film_title}. Director: #{person1.film.lastname_director}"
