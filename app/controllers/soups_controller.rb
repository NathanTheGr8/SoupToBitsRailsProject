class SoupsController < ApplicationController
	before_action :fetch_soup, only: [:show, :update, :edit, :destroy, :toggle_featured]

	def show
		respond_to do |format|
			format.html
			format.json {render json: @soup}
		end
	end

	def index
 		@soup = Soup.all

 		respond_to do |format|
 			format.json {render json: @soup}
 		end
	end

	def new

	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	def toggle_featured
		@soup.toggle!(:featured)
		flash[:notice] = "Succesfully changed feature boolean"
		redirect_to @soup
	end

	private

	def fetch_soup
		@soup = Soup.find(params[:id])
	end
end
