class PinsController < ApplicationController
	def index
		aString = ""
		@pins = Pin.all
	end

	def create
		Pin.create(pin_params)
		redirect_to '/'
	end

	def new
		@pin = Pin.new
	end

	def update
		# pp = pin_params
		@pin = Pin.find(params[:id])
		@pin.update_attributes(pin_params)
		redirect_to '/'
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
