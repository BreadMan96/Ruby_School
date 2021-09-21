current_path = File.dirname(__FILE__) 
file_path_foreheads = current_path + "/data/foreheads.txt"
file_path_eyes = current_path + "/data/eyes.txt"
file_path_noses = current_path + "/data/noses.txt"
file_path_mouths = current_path + "/data/mouths.txt"

file = File.open file_path_foreheads, "r"
foreheads = file.readlines
file.close

file = File.open file_path_eyes, "r"
eyes = file.readlines
file.close

file = File.open file_path_noses, "r"
noses = file.readlines
file.close

file = File.open file_path_mouths, "r"
mouths = file.readlines
file.close

puts foreheads.sample
puts eyes.sample
puts noses.sample
puts mouths.sample