class ApplicationController < ActionController::Base
  protect_from_forgery

	def facebook_user
		(session[:fb_access_token] && session[:fb_user_uid]) ? FBGraph::Client.new(:client_id => GRAPH_APP_ID, :secret_id => GRAPH_SECRET, :token => session[:fb_access_token]).selection.me.info! : nil
	end

	helper_method :current_user

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

  
end
