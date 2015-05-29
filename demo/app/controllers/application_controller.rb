class ApplicationController < ActionController::Base
	  def index
		@title_browser = "Inicio"
		render "/index"
  	end
  end

