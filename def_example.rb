def total_weight(options={})
	a = options[:soccer_ball_count] || 0
	b = options[:tennis_ball_count] || 0
	c = options[:golf_ball_count] || 1
	(a * 410) + (b * 58) + (c * 45) + 29
end

x = total_weight(soccer_ball_count: 3, tennis_ball_count: 2,
golf_ball_count: 1)

#total_weight