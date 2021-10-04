#encoding: cp866

@machine = 1000
@people = 1_000_000



def event_asteroid
	puts "������ �����⨫� �� ����� ������᪨� ���ந�, ��⮢���� � ����訬 �����!"
	@people = @people - @people_big_loss
	if @people <= 0
		puts "�� ᮫���� 㡨��.."
		return
	end
	puts "���� #{@people_big_loss} ��\n��⠫��� � �����: #{@people}"
end
def event_virus
	puts "������ ᮧ���� �����!!! �������⭠� ��䥪�� �ॢ�頥� �� � ����������! � ��稭��� 㡨���� ��� ��㣠. �㦭� ��筮 ��-� �ਤ㬠��!"
end
def virus_kill
	zombie_day = rand(1..4)
	@zombie_kill = 0
	zombie_day.times do 
		@people_gannibals = rand(1000..10_000)
		@people = @people - @people_gannibals
		@zombie_kill = @zombie_kill + @people_gannibals
		if @people <= 0
			puts "�� ᮫���� 㡨��.."
			return
		end
		puts "���쪮 �� � �ꥫ� ��� #{@people_gannibals} ᢮�� �� ॡ��! �㦭� ��筮 �������� ���樭�!!\n========================="
	end
	puts "��� ���� ᮧ���� ���樭�! �� ��ࠦ���� �뫥祭��! �� �� �� �६� �� ᠬ� �� 㡨�� #{@zombie_kill} ᢮�� ॡ��.. "
end
def event_attack_center
	puts "������ �⠪����� 業�ࠫ��� ���頤�, ������� �����!"
	@people = @people - @people_middle_loss
	if @people <= 0
		puts "�� ᮫���� 㡨��.."
		return
	end
	puts "���� #{@people_middle_loss} ��\n��⠫��� � �����: #{@people}"
end
def event_rocket
	puts "�� ���� ���� ���ࠢ����� ࠪ���, ��� ᮡ��� �� ����⥫��� ����, �� ���� �� ࠢ�� ����. �� ᫨誮� �����!"
	@people = @people - @people_little_loss
	if @people <= 0
		puts "�� ᮫���� 㡨��.."
		return
	end
	puts "���� #{@people_little_loss} ��\n��⠫��� � �����: #{@people}"
end

def event_art
	puts "��� ����५ �� ஡�⠬! ��� 㤠���� 㭨�⮦��� ���� ஡�⮢!"
	@machine = @machine - @machine_middle_loss
	if @machine <= 0
		puts "�� ஡��� 㭨�⮦���!"
		return
	end
	puts "���� #{@machine_middle_loss} ஡��(��)\n��⠫��� � �����: #{@machine}"
end
def event_hack
	puts "��� 㤠���� �������� ��⥬� ஡�⮢! �� ����⨢�஢��� ����⥫쭮� �� ���-��! ��� ��ঠ��!"
	@machine = @machine - @machine_big_loss
	if @machine <= 0
		puts "�� ஡��� 㭨�⮦���!"
		return
	end
	puts "���� #{@machine_big_loss} ஡��(��)\n��⠫��� � �����: #{@machine}"
end
def event_war
	puts "��� ���訥 ����� ���㯨�� � ��� � ஡�⠬� �� �������� ��஭� ��த�! �� ���������� ������ �� ᬮ��� 㭨�⮦��� ��᪮�쪮 ஡�⮢!"
	@machine = @machine - @machine_little_loss
	@people = @people - @people_little_loss
	if @machine <= 0
		puts "�� ஡��� 㭨�⮦���!"
		return
	elsif @people <= 0
		puts "�� ᮫���� 㡨��.."
		return
	end
	puts "���� #{@machine_little_loss} ஡��(��) � #{@people_little_loss} ��\n��⠫��� � ����� #{@people} �� � #{@machine} ஡�⮢"
end

day = 0

puts "��設� ����⠫�! �� ����� � ᮧ������ ������ ��� ᡮ�, � ⥯��� �� ���稭���� ���. ��砫��� �����!\n� � ஡��� �ࠦ����� ��� � ��㣮�!\n���-�� ஡�⮢: #{@machine}\n���-�� ���� ��: #{@people}"
sleep 2

while @machine > 0 && @people > 0
	#���� ��設
	@machine_big_loss = rand(10..100)
	@machine_middle_loss = rand(5..50)
	@machine_little_loss = rand(2..5)

	#���� ��
	@people_big_loss = rand(10_000..50_000)
	@people_middle_loss = rand(1000..10_000)
	@people_little_loss = rand(1..1000)
	
	day_event = rand(1..7)

	puts
	if day_event == 1
		event_war
	elsif day_event == 2
		event_hack
	elsif day_event == 3
		event_rocket
	elsif day_event == 4
		event_art
	elsif day_event == 5
		event_asteroid
	elsif day_event == 6
		event_attack_center
	elsif day_event == 7
		event_virus
		virus_kill
	end
	day = day + 1
	puts
	puts "��諮 #{day} ���(��) �����! ������ Enter ��� ᫥���饣� ���!"
	gets
end

if @people > @machine
	puts "����� �����祭��! ��� �த������: #{day} ����!"
	puts "�� ��������!"
	puts "�� �६� ����� �� ����᫨ ���� �᫥�������: #{1_000_000 - @people} ᮫���"
	sleep 10
	exit
else
	puts "����� �����祭��! ��� �த������: #{day} ����!"
	puts "�������� ஡���. ��������⢮ �� �࠭� 㭨�⮦����.. ��� ������� ⮫쪮 ���⥫�"
	puts "�� �६� ����� �� �ᯥ�� 㭨�⮦���: #{1000 - @machine} ஡�⮢."
	sleep 10
	exit
end
		
		
		