require 'rexml/document'

require_relative 'product'
require_relative 'book'
require_relative 'disk'
require_relative 'movie'

total_price = 0

products = Product.read_from_xml('data/products.xml')

choice = nil

while choice != 'x'
  Product.showcase(products)

  print "Enter number: "
  choice = gets.strip

  if choice != 'x' && choice.to_i <= products.size && choice.to_i > 0
    product = products[choice.to_i-1]
    total_price += product.buy
  end
end

puts "Thank you for shopping, #{total_price} rub. from you"