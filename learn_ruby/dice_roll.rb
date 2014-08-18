
# created a Die class with methods roll, show, cheat
class Die
	def initialize
		roll 			# roll this bad boy on init
	end

	def roll
		@numbershowing = 1 + rand(6)
	end

	def showing
		@numbershowing
	end

	def cheat
		cheatroll = gets.chomp.to_i
		if (cheatroll > 0 and cheatroll < 7)			# must be between 1-6
			@numbershowing = cheatroll
			puts "Looks like you rolled a " + @numbershowing.to_s + "."
		else
			puts "You can't flip a die to that number."
		end
	end

end

puts Die.new.showing
hand = [Die.new, Die.new]
hand.each do |die|
	die.cheat
end

