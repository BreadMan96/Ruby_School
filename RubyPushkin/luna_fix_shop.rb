#encoding: cp866
hh = { 
	basket_ball: { weight: 250, price: 100 },
	golf_ball: { weight: 50, price: 200 }, 
	shaiba: { weight: 150, price: 150 }
}

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

price = 0
weight = 0

arr.each_with_index do |x, y|
	if arr[y] == 1
		price += basket * hh[:basket_ball][:price]
		weight += hh[:basket_ball][:weight]
	elsif arr[y] == 2
		price += golf * hh[:golf_ball][:price]
		weight += hh[:golf_ball][:weight]
	elsif arr[y] == 3
		price += shaiba * hh[:shaiba][:price]
		weight += hh[:shaiba][:weight]
	end
end

puts "�㬬� ��襣� ������: #{price}$\n��� ��襣� ������: #{weight} �\n�� ������ ����� ��� ������ �㤥� ஢������: #{weight*6} �"

