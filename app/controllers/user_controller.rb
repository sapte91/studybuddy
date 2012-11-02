class UserController < ApplicationController


	def login
        @curr_username = "";
	end

    def post_login
        if params[:login] == "George" and params[:pw] == "test"
            @curr_username = "George"
            redirect_to :action => 'map'
            flash[:notice] = "Welcome to StudyBuddy, " + @curr_username + "!"
        else 
            redirect_to :action => 'login'
            flash[:notice] = "Incorrect User/Password Combination."
        end
    end

=begin
        if !user.nil? 
            if user.password_valid?(params[:pw])                
                session[:curr_user] = user.id
                redirect_to :controller => 'pics', :action => 'user', :id => user.id
                flash[:notice] = "Welcome to Papparazzzi, " + user.first_name + "."
            else
                redirect_to :controller => 'user', :action => 'login'
                flash[:notice] = "Incorrect Password."
            end
        else
            redirect_to :controller => 'user', :action => 'login'
            flash[:notice] = "No such user; please try a different login."
        end
    end
=end

    
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
