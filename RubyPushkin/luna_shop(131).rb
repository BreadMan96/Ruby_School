#encoding: cp866
hh = {basket_ball: 100, golf_ball: 45, shaiba: 150}
print "����� �������� �� ��� �ਮ����:\n1. ��᪥⡮��� ���\n2. ��� ��� �����\n3. �����\n������ ���� ⮢��, �᫨ ⮢�஢ ��᪮�쪮, � ������ �� �१ �������: "
acc = gets.strip.to_s
arr = Array.new(acc.split(','))

arr.each_index do |y|  
	arr[y] = arr[y].to_i
end

if arr[0] == 1
	print "� ����� ���-�� �� ��� �������� ��᪥⡮��� ���?: "
	basket = gets.strip.to_i
elsif arr[0] == 2
	print "� ����� ���-�� �� ��� �������� ��� ��� �����?: "
	golf = gets.strip.to_i
elsif arr[0] == 3
	print "� ����� ���-�� �� ��� �������� 蠩��?: "
	shaiba = gets.strip.to_i
end
if arr[1] == 1
	print "� ����� ���-�� �� ��� �������� ��᪥⡮��� ���?: "
	basket = gets.strip.to_i
elsif arr[1] == 2
	print "� ����� ���-�� �� ��� �������� ��� ��� �����?: "
	golf = gets.strip.to_i
elsif arr[1] == 3
	print "� ����� ���-�� �� ��� �������� 蠩��?: "
	shaiba = gets.strip.to_i
end
if arr[2] == 1
	print "� ����� ���-�� �� ��� �������� ��᪥⡮��� ���?: "
	basket = gets.strip.to_i
elsif arr[2] == 2
	print "� ����� ���-�� �� ��� �������� ��� ��� �����?: "
	golf = gets.strip.to_i
elsif arr[2] == 3
	print "� ����� ���-�� �� ��� �������� 蠩��?: "
	shaiba = gets.strip.to_i
end

summa = 0

arr.each_with_index do |x, y|
	if arr[y] == 1
		summa += basket * hh[:basket_ball]
	elsif arr[y] == 2
		summa += golf * hh[:golf_ball]
	elsif arr[y] == 3
		summa += shaiba * hh[:shaiba]
	end
end

puts "�㬬� ��襣� ������: #{summa}"






