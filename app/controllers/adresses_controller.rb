class AdressesController < ApplicationController
	def new
		@adress = Adress.new
	end 
end
