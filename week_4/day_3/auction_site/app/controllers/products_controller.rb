class ProductsController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@product = @user.product.new
	end

	def create
    user = User.find(params[:user_id])
    product = user.products.new(
      title: params[:product][:title],
      description: params[:product][:description],
      deadline: params[:product][:deadline]
    )

    product.save

    redirect_to "/"
  end

  def userproducts
        
  end
end
