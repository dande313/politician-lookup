class Lookup
	attr_accessor

	def initialize
	end

    def clear_screen
    	puts "\e[H\e[2J"
    end

	def introduction
		puts ""
	    puts "************* US Representative Lookup *************"
	    puts "                      v.01                          "
	    puts "                by Allen Anderson                   "
	    puts ""
	    puts ""
	end

	def valid_zip_code?(zip_code)
  		zip_code.size == 5 && zip_code.scan(/\D/).empty?
	end

	def get_input
		puts " Please enter your five-digit ZIP Code:"
		zip_code = gets.chomp
		if valid_zip_code?(zip_code)
			return zip_code
		else
			clear_screen
			run
		end
	end


	def run
		clear_screen
		introduction
		zip_code = get_input
		puts "Yay! You entered a REAL zip code! It is #{zip_code}."
		exit
	end

end