
#
# Silly program mimicking a deaf grandmom
#

huh = "HUH?! SPEAK UP, SONNY!"
puts huh
reply = ''
repeat = 0

while true
	reply = gets.chomp
	if (reply == "BYE" and repeat == 2)			# have to shout "BYE" 3x to exit program
		puts "OKAY, GOODBYE SONNY!"
		break
	elsif (reply == "BYE" and repeat < 2)		# grandma pretends to not hear
		puts "OH, WHERE DID MY KITTY GO, CAN YOU HELP ME FIND HER?"
		repeat += 1
	elsif (reply == reply.upcase)				# must speak in ALLCAPS
		puts "NO, NOT SINCE " + (1930 + rand(20)).to_s + "!"
	else
		puts huh
	end
end

