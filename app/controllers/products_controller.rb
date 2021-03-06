class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  load_and_authorize_resource :except => [:index, :show]


  #before_action :set_categories, only: [:new, :edit, :create]
  
  
  # GET /products
  # GET /products.json
  def index
    @products = unless params[:q]
      Product.all
    else
      Product.where('productname ILIKE ?', "%#{params[:q]}%") 
        
    end
    @products_last = Product.last(10)
  end


# def index
#   if params[:search]
#     @products = Product.where('productName LIKE ?', "%#{params[:search]}%")
#   else 
#     @products = Product.all
#   end
# end


# GET /products/1
# GET /products/1.json
def show
end

# GET /products/new
def new
  @product = Product.new
  @products = Product.all
  
end

# GET /products/1/edit
def edit
  

end

# POST /products
# POST /products.json
def create
  @product = Product.new(product_params)
  @product.user = current_user
  
  respond_to do |format|
    if @product.save
      format.html { redirect_to @product, notice: 'Product was successfully created.' }
      format.json { render :show, status: :created, location: @product }
    else
      format.html { render :new }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
end

# PATCH/PUT /products/1
# PATCH/PUT /products/1.json
def update
  respond_to do |format|
    if @product.update(product_params)
      format.html { redirect_to @product, notice: 'Product was successfully updated.' }
      format.json { render :show, status: :ok, location: @product }
    else
      format.html { render :edit }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
end

# DELETE /products/1
# DELETE /products/1.json
def destroy
  @product.destroy
  respond_to do |format|
    format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
    format.json { head :no_content }
  end
end

private
# Use callbacks to share common setup or constraints between actions.
def set_product
  @product = Product.find(params[:id])
end

def set_categories
  @categories_array = Category.order(:name).pluck(:name, :id)
end

def set_stores
  @stores_array = Store.order(:name).pluck(:name, :id)
end

# Only allow a list of trusted parameters through.
def product_params
  params.require(:product).permit(:productname, :comercialName, :markName, :price, :ingredients, :description, :image, :totalScore, :store_id, :category_id, :user_id)
end
end
