class ProductsController < ApplicationController
  def index
    @products = Product.search(params[:search]).order(:product_name).page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)

  	if @product.save
  		redirect_to products_path
  	else
  		render 'new'
  	end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:sku, :product_name, :description, :category_id, :credits, :retailPrice, :ndpPrice, :distPrice)
    end

end
