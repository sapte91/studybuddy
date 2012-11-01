class UserController < ApplicationController


	def login

	end
    
    def profile
        @curr_user = ["Shilpa", [["CS 147", "Meat on the Bones!", 2], ["CS 221", "No status available", 3]]]
    end

    def favs
    	@curr_favs = [["George", [["CS 147", "Meat on the Bones!",2],["CS 221", "I die.", 1]]],["Dan", [["CS 147", "Meat on the Bones!",3],["CS 221", "So easy.",3]]]]
    	@curr_user = ["Shilpa", [["CS 147", "Meat on the Bones!",2], ["CS 221", "No status available",3]]]
	end
    
    def map
    	@curr_user_pin = ["Shilpa", 37.4419, 122.1419]
        @friend_pins = [["George", 37.4225, 122.1653],["Dan", 37.4226, 122.1656]]
    end
end
