class HighLow
	attr_reader :computer_number
	# should initialize take a player?
	def initialize
		@computer_number = rand(1..100)
	end
end