#encoding: cp866

print "������ ����� ��������� ���⪠: "
dlina = gets.strip.to_i
print "������ �ਭ� ��������� ���⪠: "
shirina = gets.strip.to_i

kvadmetr = dlina * shirina

puts "��� ������� ���⮪: #{kvadmetr} �������� ���஢"
if kvadmetr < 50 
	puts "�⮨����� ������� ���⪠ ��⠢���: 1000$"
elsif kvadmetr >= 50 && kvadmetr < 100
	puts "�⮨����� ������� ���⪠ ��⠢���: 1500$"
elsif kvadmetr >= 100
	puts "�⮨����� ������� ���⪠ ��⠢���: #{kvadmetr * 25}$"
end



