class AdminController < ApplicationController
	def index
		@apiKeys = ApiKey.all
	end

	def destroy
		apiKey = ApiKey.where(:id => params[:id]).take
		apiKey.destroy
		redirect_to :back
	end
end