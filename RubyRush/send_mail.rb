require 'pony'
require 'io/console'

print "Enter your email: "
my_mail = gets.strip

print "\nEnter your #{my_mail} email password to send the message: "
password = STDIN.noecho(&:gets).chomp

print "\nWho should I send the letter to? Enter the address: "
send_to = gets.strip

print "Enter subject message: "
subject = STDIN.gets.encode('UTF-8').chomp

print "\nEnter the message: "
body = STDIN.gets.encode('UTF-8').chomp

Pony.mail(
  subject: subject,
  body: body, 
  to: send_to,
  from: my_mail,
  via: :smtp,
  via_options: {
    address: 'smtp.mail.ru', 
    port: '465', 
    tls: true, 
    user_name: my_mail, 
    password: password,
    authentication: :plain 
  }
)

puts 'Mail sent!'


# Настройки Pony для ящика на gmail.com
#
# via: :smtp,
# via_options: {
#   address: 'smtp.gmail.com',
#   port: '587',
#   enable_starttls_auto: true,
#   user_name: my_mail,
#   password: password,
#   authentication: :plain,
# }
#
# Настройки Pony для почтового ящика на yandex.ru
#
# via: :smtp,
# via_options: {
#   address: 'smtp.yandex.ru',
#   port: '465',
#   enable_starttls_auto: true,
#   tls: true,
#   user_name: my_mail,
#   password: password,
#   authentication: :plain,
# }