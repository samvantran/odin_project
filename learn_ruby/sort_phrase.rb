
# 
# Program accepts user input and sorts phrase
# didn't use .sort method; implemented Bubbble Sort
#

phrase = []
answer = ""

while answer != "\n"
	beg_time = Time.now								# start timer for program speed
	answer = gets
	if answer != "\n"								# build phrase
		answer = answer.chop
		phrase.push(answer.downcase)
	elsif answer == "\n"							# start sort
		swapped = true
		count = 1
		while swapped == true
			swapped = false
			for i in 1..phrase.length-count
				if phrase[i-1] > phrase[i]
					temp = phrase[i]
					phrase[i] = phrase[i-1]
					phrase[i-1] = temp
					swapped = true
				end
			end
			count += 1
		end
		puts phrase.join(" ") + "."
		
		end_time = Time.now							# end timer
		puts "This program took #{(end_time - beg_time) * 1000} milliseconds to complete"
	end
end
