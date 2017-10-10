class OrdersController < ApplicationController
	def index
		redirect_to "/orders/index"
	end

	def create
				redirect_to "/orders/show"

	end

	def destroy
	end
end