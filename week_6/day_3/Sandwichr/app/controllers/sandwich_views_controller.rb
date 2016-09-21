class SandwichViewsController < ApplicationController
		before_action :authenticate_user!, only: [:index, :show]

	def index
		@sandwich = Sandwich.all
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = @sandwich.ingredients	
		@all_ingredients = Ingredient.all 

		# _id = SandwichIngredient.find_by(ingredient_id: params[:ingredient_id])
	end

	def new

	end

	def create

	end
end
