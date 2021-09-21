current_path = File.dirname(__FILE__) 
file_path_questions = current_path + "/data/questions.txt"

current_path = File.dirname(__FILE__) 
file_path_answers = current_path + "/data/answers.txt"


questions = File.open file_path_questions, "r"
answers = File.open file_path_answers, "r"

questions_lines = questions.readlines
answers_lines = answers.readlines

right_user_answers = 0
wrong_user_answers = 0

questions_lines.each_with_index do |x, i|
	puts "#{i+1}. #{x}"
	print "Your Answer: "
	user_answear = gets.strip.to_i
	if user_answear == answers_lines[i].to_i
		right_user_answers += 1
	else
		puts "No, correct answer - #{answers_lines[i]}"
		wrong_user_answers += 1
	end
	puts
end

puts "Your stats:\nOut of #{questions_lines.size} questions you answered #{right_user_answers} correctly"
puts
if right_user_answers == 4
	puts "You know history very well!"
elsif right_user_answers >= 2 && right_user_answers < 4
	puts "Good knowledge of history, but some things need tightening!"
elsif right_user_answers < 2 
	puts "You need to study history!"
end