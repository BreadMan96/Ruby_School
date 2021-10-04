#encoding: cp866

def password(pas)
	print "Введите #{pas}: "
	gets.chomp
end

passw = password('пароль')
passw.length.times { print "*" }
