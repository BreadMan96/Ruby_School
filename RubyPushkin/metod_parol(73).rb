#encoding: cp866

def password(pas)
	print "������ #{pas}: "
	gets.chomp
end

passw = password('��஫�')
passw.length.times { print "*" }
