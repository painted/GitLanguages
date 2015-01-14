class UsersController < ApplicationController


	def index 
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user].permit(:username))
		@user.save!
		rescue ActiveRecord::RecordInvalid
		Rails.logger.warn('WARNING: Multiple username addition')
		flash[:notice] = 'Username has already been taken'
		ensure
		redirect_to users_path
	end

	private

	def users
		@users ||= User.all
	end
	helper_method :users
end
