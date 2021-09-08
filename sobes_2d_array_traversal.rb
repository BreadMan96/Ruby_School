#Создать двумерный массив и обойти его (2D array traversal)

arr = [
	%w(a b c),
	%w(d e f),
	%w(g h i)
]

0.upto(2) do |j|
	0.upto(2) do |i|
		print arr[j][i]
	end
end