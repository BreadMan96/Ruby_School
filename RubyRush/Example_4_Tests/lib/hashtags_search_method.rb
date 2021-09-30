def search(text)
	hashtag_regexp = /#[[:word:]-]+/
	@hashtags = text.scan(hashtag_regexp)
end