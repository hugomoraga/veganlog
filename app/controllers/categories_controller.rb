class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

    def index
        @categories = Category.all.includes(:products)

    end
    
    
    def show
    end
    
    def new
        @category = Category.new
    end
    
    
    def edit
    end
    
    def create
        @category = Category.new(category_params)

        respond_to do |format|
          if @category.save
            format.html { redirect_to root_path , notice: 'Category was successfully created.' }
            format.json { render :show, status: :created, location: @category}
          else
            format.html { render :new }
            format.json { render json: @category.errors, status: :unprocessable_entity }
          end
        end
      end
      
    def destroy
    end
    
    
    
    private
    
    def set_category
        @category = Category.find(params[:id])
    end
    
    def category_params
        params.require(:category).permit(:name)
    end
    

end
