require 'net/http'
require 'rexml/document'
require 'byebug'

def unclog
  @wallet = @wallet.round(1)
end

URL = 'http://www.cbr.ru/scripts/XML_daily.asp'

response = Net::HTTP.get_response(URI.parse(URL))
doc = REXML::Document.new(response.body)

@wallet = 0
course_usd = 0
course_eur = 0

# R01235 — Доллар США
# R01239 — Евро


doc.each_element('//Valute[@ID="R01235" or @ID="R01239"]') do |currency_tag|
  # byebug - взять управление программой под себя в этом моменте (дебажить)
  name = currency_tag.get_text('Name')
  value = currency_tag.get_text('Value').to_s
  value = value.gsub(',', '.')
  value = value.to_f

  puts "#{name}: #{value} rub."
  if name == "Доллар США"
    course_usd = value
  elsif name == "Евро"
    course_eur = value
  end
end

print "What currency do you want to exchange?(RUB, USD, EUR): "
exchange_currency = gets.strip.upcase

print "How much do you want to exchange?: "
exchange_amount = gets.strip.to_i

print "What currency do you want to get?(RUB, USD, EUR): "
receiving_currency = gets.strip.upcase

if exchange_currency == 'RUB' && receiving_currency == 'USD'
  @wallet = exchange_amount / course_usd
  unclog
  puts "Your balance: #{@wallet}$"
elsif exchange_currency == 'RUB' && receiving_currency == 'EUR'
  @wallet = exchange_amount / course_eur
  unclog
  puts "Your balance: #{@wallet}€"
elsif exchange_currency == 'USD' && receiving_currency == 'RUB'
  @wallet = exchange_amount * course_usd
  unclog
  puts "Your balance: #{@wallet}₽"
elsif exchange_currency == 'USD' && receiving_currency == 'EUR'
  @wallet = exchange_amount * (course_usd / course_eur)
  unclog
  puts "Your balance: #{@wallet}€"
elsif exchange_currency == 'EUR' && receiving_currency == 'RUB'
  @wallet = exchange_amount * course_eur
  unclog
  puts "Your balance: #{@wallet}₽"
elsif exchange_currency == 'EUR' && receiving_currency == 'USD'
  @wallet = exchange_amount * (course_eur / course_usd)
  unclog
  puts "Your balance: #{@wallet}$"
end