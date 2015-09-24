class Person
	def initialize (name, age)
		@name = name
		@age = age
		@nickname = name[0...4]
	end
	def nickname
		@nickname
	end
	def introduce 
		"#{@name} is #{@age} years old"
	end
	def birth_year
		2015 - @age.to_i
	end

end