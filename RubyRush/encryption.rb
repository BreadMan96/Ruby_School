require 'digest'

print "Enter the word or phrase to encrypt: "
word_to_encrypt = gets.chomp

print "How to encrypt the message?\n1. MD5\n2. SHA1\nEnter number (1 or 2): "
encryption_method = gets.strip.to_i

case encryption_method
when 1
	md5 = Digest::MD5.hexdigest(word_to_encrypt)
	puts md5
when 2
	sha256 = Digest::SHA1.hexdigest(word_to_encrypt)
	puts sha256
end

