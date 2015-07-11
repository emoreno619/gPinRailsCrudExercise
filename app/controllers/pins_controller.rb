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
		
	end

	def edit
		
	end

	def show
		@pin = Pin.find(params[:id])		
	end

	def destroy
		@pin = Pin.find(params[:id])
		binding.pry
		@pin.destroy
		redirect_to '/'
	end

	private 
		def pin_params
			params.require(:pin).permit(:url,:image,:comment)
		end
end
