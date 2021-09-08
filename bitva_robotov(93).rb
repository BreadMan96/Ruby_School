#encoding: cp866

@team_first = Array.new(10, 100)
@team_second = Array.new(10, 100)
@win = 0

while @win != 1 && @win != 2
	print "�� ����� ������� ������� �⠢�� (����� ���� 1 ��� 2): "
	@win = gets.strip.to_i
	if @win != 1 && @win != 2
		puts "���ࠢ��쭮 ���祭��. �㦭� �⠢��� ���� �� 1-� �������, ���� �� 2-�. ���஡� ��� ࠧ!"
	end
end

print "����� �㬬� �⠢���: "
@money = gets.strip.to_i


def hit_first_team
	i = rand(0..9)
	if @team_second[i] <= 0
		puts "���� �� ஡��� �#{i}"
		puts "���, ���, ��㦮�. � ��� ࠧ ����."
	else
		damage = rand(10..40)
		@team_second[i] = @team_second[i] - damage
		if @team_second[i] > 0
			puts "���� �� ஡��� �#{i}\n�ॢ��室��� ���������!\n����ᥭ� �஭�: #{damage}\n��⠫��� hp: #{@team_second[i]}"
		elsif @team_second[i] <= 0
			puts "���� �� ஡��� �#{i}\n�ॢ��室��� ���������!\n����ᥭ� �஭�: #{damage}\n����� 㡨�!"
		end
		action = @team_second.count { |action| action > 0 }
		puts "� ������� ᨭ�� ��⠫���: #{action} ஡��(��)!"
		puts
	end
end

def hit_second_team
	i = rand(0..9)
	if @team_first[i] <= 0
		puts "���� �� ஡��� �#{i}"
		puts "���, ���, ��㦮�. � ��� ࠧ ����."
	else
		damage = rand(10..40)
		@team_first[i] = @team_first[i] - damage
		if @team_first[i] > 0
			puts "���� �� ஡��� �#{i}\n�ॢ��室��� ���������!\n����ᥭ� �஭�: #{damage}\n��⠫��� hp: #{@team_first[i]}"
		elsif @team_first[i] <= 0
			puts "���� �� ஡��� �#{i}\n�ॢ��室��� ���������!\n����ᥭ� �஭�: #{damage}\n����� 㡨�!"
		end
		action = @team_first.count { |action| action > 0 }
		puts "� ������� ����� ��⠫���: #{action} ஡��(��)!"
		puts
	end
end

def first_win? 
	@team_first.each do |x|
		if x > 0
			return true
		end
	end
	return false
end

def second_win? 
	@team_second.each do |x|
		if x > 0
			return true
		end
	end
	return false
end

puts "�⠢�� ᤥ����. ���堫�!"
z = 0

while true do 	
	puts "��� ������� �����"
	hit_first_team
	if second_win? == false
		if @win == 1
			puts "��� �⠢�� ��ࠫ�. ��� �먣��� ��⠢��: #{@money * 2}$"
		else 
			puts "��� �⠢�� �ந�ࠫ�"
		end
		puts "������ ��ࢮ� ������� ஡�⮢!\n��⢠ ������� #{z} �㭤(��)\n������ Enter ��� ��室�!"
		gets
		exit
	end
	puts "��� ������� ᨭ��"
	hit_second_team
	if first_win? == false
		if @win == 2
			puts "��� �⠢�� ��ࠫ�. ��� �먣��� ��⠢��: #{@money * 2}$"
		else 
			puts "��� �⠢�� �ந�ࠫ�"
		end
		puts "������ ��ன ������� ஡�⮢!\n��⢠ ������� #{z} �㭤(��)\n������ Enter ��� ��室�!"
		gets
		exit
	end
	puts "��� Enter ��� ������ �㭤�!"
	z = z + 1
	puts
	gets
end


