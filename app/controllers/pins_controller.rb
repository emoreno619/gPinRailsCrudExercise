class PinsController < ApplicationController
	def index
		aString = ""
		@pins = Pin.all
	end

	def create
		# Pin.create(pin_params) 

		# Use new and save instead of create!
		@pin = Pin.new(pin_params)
		if @pin.save
			redirect_to '/'
		else
			render :new
		end
	end

	def new
		@pin = Pin.new

	end

	def update
		# pp = pin_params
		@pin = Pin.find(params[:id])
		
		if @pin.update_attributes(pin_params)
			redirect_to '/'
		else
			render :edit
		end
		
	end

	def edit
		# Why is 'dirty data' of 'params[:id]' permitted in cases of edit, show, destroy
		# but not permitted in cases of create?
		@pin = Pin.find_by_id(params[:id])
	end

	def show
		@pin = Pin.find(params[:id])		
	end

	def destroy
		@pin = Pin.find(params[:id])
		
		@pin.destroy
		redirect_to '/'
	end

	private 
		def pin_params
			params.require(:pin).permit(:url,:image,:comment)
		end
end
