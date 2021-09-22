print 'Enter a string of hashtags:'
string = gets.chomp

# https://ruby-doc.org/core-2.4.0/Regexp.html
hashtag_regexp = /#[[:word:]-]+/

# https://ruby-doc.org/core-2.4.0/String.html#method-i-scan
hashtags = string.scan(hashtag_regexp)

puts
puts 'Hashtags found: ' + hashtags.join(', ')