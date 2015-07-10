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
	private 
		def pin_params
			params.require(:pin).permit(:url,:image,:comment)
		end
end
