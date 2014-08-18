
#
# Created OrangeTree class with simple methods
#

class OrangeTree

	def initialize
		@height = 0
		@age = 0
		@orangeCount = 0
	end

	def height
		puts @height
	end

	def oneYearPasses
		if @age < 50
			if (@age > 10)
				@orangeCount = 0 		# reset number of oranges each year
				@orangeCount = @age*2 + rand(@age*2)
			end
			@age += 1
		else
			puts "Tree is too old. Tree says 'Goodbye, world'"
			exit
		end

		if @height < 20
			@height += 0.5
		end
	end

	def countTheOranges
		puts @orangeCount
	end

	def pickAnOrange
		if @orangeCount > 0
			@orangeCount -= 1
			puts "Picked an orange off the tree and my, oh my was it delicious."
		else
			puts "Sorry, no oranges to pick!"
		end
	end
end

# tests
myTree = OrangeTree.new
for i in 0..15 
	myTree.oneYearPasses
end
myTree.height
myTree.countTheOranges
myTree.pickAnOrange
myTree.countTheOranges
for i in 0..36
	myTree.oneYearPasses
end
myTree.height
myTree.countTheOranges
myTree.pickAnOrange
myTree.countTheOranges