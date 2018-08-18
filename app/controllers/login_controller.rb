class LoginController < ApplicationController
	
	def index
		@user = User.all
	end

	def new

	end

	def create
		#render plain: params[:login].inspect
		@user = User.new login_params
		@user.save

		redirect_to action: 'show', id: @user.id
	end

	def show
		@user = User.find params[:id]
	end

	private
	def login_params
		params.require(:userCreate).permit(:name, :lastname, :password, :document, :mail, :phone, :profession, :id_fundation, :role, :state)
	end
end
