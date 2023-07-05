class ProductsController < ApplicationController
  # GET /products
  def index
    @products = Product.all
    render json: @products, status: :ok
  end

  # GET /products/:id
  def show
    @product = Product.find(params[:id])
    render json: @product, status: :ok
  end

  # POST /products
  def create
    @product = Product.create!(create_params)
    render json: @product, status: :created
  end

  # PUT /products/:id
  def update
    @product = Product.find(params[:id])
    @product.update!(update_params)
    render json: @product, status: :ok
  end

  # DELETE /products
  def destroy
    @product = Product.find(params[:id])
    @product.destroy!
    render json: @product, status: :ok
  end

  private

  def create_params
    params.require(:product).permit(:name, :price)
  end

  def update_params
    params.require(:product).permit(:name, :price)
  end
end