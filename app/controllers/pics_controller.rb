#require 'pry'

class PicsController < ApplicationController

	before_action :find_pic, only: [:show, :edit, :update, :destroy]
	# find pic only when these actions occur
	def index
		@pics = Pic.all.order("created_at Desc")	
		#in descending order
	end

	def show
		# @pic = Pic.find(params[:id]) we need this for delete, edit, update nd other functions
	end

	def new
		@pic = current_user.pics.build
		#to assign a user to a created pic
	end

	def create
		@pic = current_user.pics.build(pic_params)
		# if pic is saved notify otherwise take to new
		if @pic.save
			redirect_to @pic, notice: "Yes,It was posted!"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @pic.update(pic_params)
			redirect_to @pic, notice: "Congrats Pic was updated"
		else
			render'edit'      #render prevents data to get lost if pic not updated
		end
	end 

	def destroy
		@pic.destroy
		redirect_to root_path
	end


	# private methods are for internal usage within the defining class
	private				# defining pics_params 

	def pic_params
		params.require(:pic).permit(:title, :discription)  # until add permit to add images 
	end

	def find_pic
		@pic = Pic.find(params[:id])
	end

end
	

