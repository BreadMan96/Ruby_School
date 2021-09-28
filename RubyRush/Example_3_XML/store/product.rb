class Product
  def initialize(price, amount)
    @price = price
    @amount_available = amount
  end

  def price
    @price
  end

  def update(options)
  end

  def info
  end

  def show
    "#{info} - #{@price} rub. [left: #{@amount_available}]"
  end

  def self.showcase(products)
    puts "What do you want to buy?\n\n"

    products.each_with_index do |product, index|
      puts "#{index}: #{product.show}"
    end

    puts "'X'. Leave the store\n\n"
  end

  def buy
    if @amount_available > 0
      puts "* * *"
      puts "You bought: #{info}"
      puts "* * *\n\n"

      @amount_available -= 1
      price
    else
      puts "Unfortunately, this product is out of stock!"
      0
    end
  end

  def self.read_from_xml(file_name)
    file_path = File.dirname(__FILE__) + "/" + file_name

    unless File.exist?(file_path)
      abort "File #{file_path} not found"
    end

    file = File.new(file_path, "r")
    doc = REXML::Document.new(file)
    file.close

    result = []
    product = nil

    # Найдём все теги product, которые лежат внутри корневого тега products 
    doc.elements.each("products/product") do |product_node|
      # Из атрибутов каждого такого тега достанем цену и количество на складе
      price = product_node.attributes["price"].to_i
      amount_available = product_node.attributes["amount_available"].to_i

      # По правилам формирования нашего файла в каждом теге product
      # Может быть только один элемент book, movie или disk
      # Таким образом, в два из этих цикла мы даже на зайдём
      product_node.each_element("book") do |book_node|
        # Сейчас мы находимся внутри тега book
        # И можем прочитать его аттрибуты и создать соответствующий класс
        product = Book.new(price, amount_available)
        product.update(
          title: book_node.attributes["title"],
          author_name: book_node.attributes["author_name"]
        )
      end

      product_node.each_element("movie") do |movie_node|
        # Сейчас мы находимся внутри тега movie
        # ...
        product = Movie.new(price, amount_available)
        product.update(
          title: movie_node.attributes["title"],
          director_name: movie_node.attributes["director_name"],
          year: movie_node.attributes["year"]
        )
      end

      product_node.each_element("disk") do |disk_node|
        # Аналогично для дисков
        # ...
        product = Disk.new(price, amount_available)
        product.update(
          game_name: disk_node.attributes["game_name"],
          creator: disk_node.attributes["creator"],
          genre: disk_node.attributes["genre"]
        )
      end

      # Теперь запишем созданный экземпляр в результирующий массив
      # и перейдём к следующему тегу product
      result.push(product)
    end

    # вернём массив продуктов
    return result
  end
end