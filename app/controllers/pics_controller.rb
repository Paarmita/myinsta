#require 'pry'

class PicsController < ApplicationController

	before_action :find_pic, only: [:show, :edit, :update, :destroy]
	# find pic only when these actions occur
	def index
	end

	def show
		# @pic = Pic.find(params[:id]) we need this for delete, edit, update nd other functions
	end

	def new
		@pic = Pic.new
	end

	def create
		@pic = Pic.new(pic_params)
		# if pic is saved notify otherwise take to new
		if @pic.save
			redirect_to @pic, notice: "Yes,It was posted!"
		else
			render 'new'
		end
	end
	# private methods are for internal usage within the defining class
	private				# defining pics_params 

	def pic_params
		params.require(:pic).permit(:title, :discription)  # untl add permit to add images 
	end

	def find_pic
		@pic = Pic.find(params[:id])
	end

end
	

