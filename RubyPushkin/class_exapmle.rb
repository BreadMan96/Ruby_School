class Monkey
	attr_reader :state
	def initialize
		@state = :stands_still
	end
	def run
		@state = :run
	end
	def stop
		@state = :stop
	end
	def state
		puts "Monkey #{@state}"
	end
end

monkey1 = Monkey.new
monkey1.state
monkey1.run
monkey1.state
monkey1.stop
monkey1.state