class UsersController < ApplicationController
	def index
		@users = User.all
	end
#resultado de todos los usuarios que esten en la lista

	def new
	end

	def edit
		@user = User.find(params[:id])
	end
# Es el formulario como tal

	def create
		@user = User.new (user_params)
		if @user.save
			session[:user] = @user.id
			flash[:notice] = "Tu usuario esta creado"
			redirect_to @user
		else 
			render "new"
			end
	end

 	def update
	@user = User.find(params[:id])
	if @user.update(user_params)
		flash[:notice] = "Tu usuario fue modificado"
		redirect_to @user
	else
		render "edit"
end
end
#Datos dentro del formulario.

def show
		@user = User.find (params[:id])
	end

	def destroy
	@user = User.find (params[:id])
	@user.destroy
	session[:user] = nil
	redirect_to users_path
	end
#Este es el metodo para eliminar	
	
	

	private
	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end
