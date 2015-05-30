class ApplicationController < ActionController::Base
	  def index
		@title_browser = "Inicio"
		render "/index"
  	end
  

def api
	@response = HTTParty.get("http://ceud.herokuapp.com/geo/" + params[:city]);
	render "/api"
end
	
end
