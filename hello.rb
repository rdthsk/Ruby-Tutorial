#!/us/bin/env ruby

class MegaGreeter
	attr_accessor :names

	#Create the object 
	def initialize(names = "World")
		@names = names
	end
	
	#Say hi to everybody
	def say_hi
		if names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}!"
			end	
		else
			puts "Hello #{@names}!"
		end
	end
	
	#Say bye to everybody
	def say_bye
		if@names.nil?
			puts "..."	
		elsif @names.respond_to?("join")
			#join the list elements with commas
			puts "Goodbye #{@names.join(", ")}. Come back soon!"

		else
			puts "Goodbye #{names}, come back soon"
			
		end
	end

end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	#Change the name to your name
	mg.names = "Rebecca"
	mg.say_hi
	mg.say_bye

	#Change the name to an array of names
	mg.names = ["Kai", "DeVaris", "Rebecca"]
	mg.say_hi
	mg.say_bye

	#Change the nil
	mg.names = nil
	mg.say_hi
	mg.say_bye
	end