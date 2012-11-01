class UserController < ApplicationController
	def login

	end
    
    def profile
        @default_user = ["Shilpa", "CS 147", "Meat on the Bones!", "CS 221", "No status available"]
    end

    def favs
    	@default_favorite = ["George", "CS 147", "Meat on the Bones!", "CS 221", "I die."]
    	@default_user = ["Shilpa", "CS 147", "Meat on the Bones!", "CS 221", "No status available"]
	end
    
    def map
    	@default_my_pin = ["Shilpa", 37.4419, 122.1419]
        @default_friend_pin = ["George", 37.4225, 122.1653]
    end
end
