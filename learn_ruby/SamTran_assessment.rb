
#
# Sam Tran's Ruby assessment
#

#1: Arrays
array = ["Blake", "Ashley", "Jeff"]
array << "Sam" 										#a. add elem to array
puts array 											#b. print out all elems
array[1]											#c. returns value at index1
array.index("Jeff") 								#d. returns index for val "Jeff"



#2: Hashes
instructor = {:name=>"Ashley", :age=>27} 			
instructor["location"] = "NYC"						#a. add new key "location" => "NYC"
instructor.each do |key, val|						#b. prints all key/value pairs
	puts "#{key}: #{val}"		
end
puts instructor[:name]								#c. return name value from hash
puts instructor.key(27)								#d. return key name for val 27



#3: Nested Structures
school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

school[:founded_in] = 2013														#a. add key "founded_in" to school and => 2013
school[:students].push({:name => "Jiminy"})										#b. add student to school's student array
school[:students].delete_at(1)													#c. delete billy from students; 
																				#alternative is .delete({:name=>"Billy", :grade => "F"})
school[:students].each do |i|													#d. add key: "semester" val: "Summer" to every student
	i["semester"] = "Summer"
end
school[:instructors][1][:subject] = "being almost better than Blake"			#e. change ashley's subject value
school[:students][2][:grade] = "F"												#f. change frank's grade to F
school[:students].each do |student|												#g. return name of student with grade B
	puts student[:name] if student[:grade] == "B"
end
school[:instructors].each do |instr|											#h. return jeff's subject
	puts instr[:subject] if instr[:name] == "Jeff"
end
school.each_value { |val| puts val }											#i. print all of school's values



#4: Methods
def get_grades(student, school)													#a. create method to return student's grade
	school[:students].each do |s|
		puts s[:grade] if s[:name] == student
	end
end

def update_subject(instructor, new_subject, school)								#bi. create method to update instructor's subject
	school[:instructors].each do |i|
		i[:subject] = new_subject if i[:name] == instructor
	end
end
update_subject("Blake", "being terrible", school)								#bii. update Blake's subject

def add_student(student, school)												#ci. create method to add stuents
	school[:students].push({:name=>student})
end
add_student("Sam", school)														#cii. add self to students

def add_key(key, value, school)													#di. create method to add keys & values
	school[key] = value
end
add_key("Ranking", 1, school)													#dii. add Ranking=1



#5: Object Orientation
class School																	#a. create bare bones class def for school
	attr_accessor :name, :location, :students, :instructors
	attr_reader :ranking

	def initialize(name, location, ranking, students, instructors)				#b. initialize method
		@name = name															#bi. create instance variables
		@location = location													
		@ranking = ranking
		@students = students
		@instructors = instructors
	end

	def set_ranking(rank)														#d. add ranking method
		@ranking = rank
	end

	def add_student(name, grade, semester)										#e. add student method
		@students.push({:name=>name, :grade=>grade, :semester=>semester})
	end

	def remove_student(name)													#f. remove student method
		@students.delete_if { |i| i[:name] == name }
	end

	def find_student(name)														#6c. find student object method
		@students.each { |i| puts i if i[:name] == name }
	end
end

SCHOOLS = []																	#g. create constant SCHOOLS array

class Array 																	#h. create Array class method that emptys array
	def reset
		self.clear
	end
end


#6: Classes
class Student																	#create Student class
end



#7: Self
#a. "hello"
#   "Student"

#b 	"Student"

#c 	Student object memory address 

#d 	Student mem address

#e "goodbye"







