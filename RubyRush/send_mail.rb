require 'pony'
require 'io/console'

#EMAIL_PATTERN = /^[\w\d]+@[\w\d]+\.[\w]+/

def my_email
  print "Enter your email: "
  @my_mail = gets.strip

  check = /^[\w\d]+@[\w\d]+\.[\w]+/ =~ @my_mail

  while check != 0
    puts "Incorrect email!"
    print "Enter your email: "
    @my_mail = gets.strip
    check = /^[\w\d]+@[\w\d]+\.[\w]+/ =~ @my_mail
  end
end

# def valid_email?(email)
#   end

def send_email
  print "\nRecipient's email: "
  @send_to = gets.strip

  check = /^[\w\d]+@[\w\d]+\.[\w]+/ =~ @send_to

  while check != 0
    puts "Incorrect email!"
    print "Recipient's email: "
    @send_to = gets.strip
    check = /^[\w\d]+@[\w\d]+\.[\w]+/ =~ @send_to
  end
end

my_email

print "\nEnter your email password (#{@my_mail}): "
password = STDIN.noecho(&:gets).chomp

send_email

print "\nEnter subject message: "
subject = STDIN.gets.encode('UTF-8').chomp

print "\nEnter the message: "
body = STDIN.gets.encode('UTF-8').chomp

begin
  Pony.mail(
    subject: subject,
    body: body, 
    to: @send_to,
    from: @my_mail,
    via: :smtp,
    via_options: {
      address: 'smtp.mail.ru', 
      port: '465', 
      tls: true, 
      user_name: @my_mail, 
      password: password,
      authentication: :plain 
    }
  )
puts 'Mail sent!'
rescue SocketError
  puts "Can't connect to the service!"
rescue Net::SMTPSyntaxError => error
  puts "You entered the email address incorrectly:  " + error.message
rescue Net::SMTPAuthenticationError => error
  puts "You entered the wrong password, try again! (#{error.message})"
end

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