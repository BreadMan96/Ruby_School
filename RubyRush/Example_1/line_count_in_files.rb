current_path = File.dirname(__FILE__) 
file_path = current_path + "/data/line_count.txt"

if File.exist?(file_path)
  file = File.open file_path, "r"
  lines = file.readlines
  empty = 0
  five_last_lines = Array.new
  lines.each_with_index do |x, i|
  	if x.size <= 1
  		empty += 1
  	end
  	if lines.size - i <= 5
  		five_last_lines << x
  	end  
  end
  puts "Open file: #{file_path}\nLines count: #{lines.size}\nEmpty lines: #{empty}\nLast 5 lines: "
  five_last_lines.each_with_index do |x, i|
  	if x.size <= 1
  		puts "#{i+1}. Nil"
  	else
  		puts "#{i+1}. #{x}"
  	end
  end
else
  puts "File not found!"
end

