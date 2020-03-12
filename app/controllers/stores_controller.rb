class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  
def index
  @stores = Store.all
end

def show
end

def new
  @store = Store.new
  @store.addresses.build
end

def edit
end

def create
  @store = Store.new(store_params)


  respond_to do |format|
    if @store.save
      format.html { redirect_to root_path , notice: 'Store was successfully created.' }
      format.json { render :show, status: :created, location: @store}
    else
      format.html { render :new }
      format.json { render json: @store.errors, status: :unprocessable_entity }
    end
  end
end

def update
  respond_to do |format|
    if @store.update(store_params)
      format.html { redirect_to @store, notice: 'Store was successfully updated.' }
      format.json { render :show, status: :ok, location: @store}
    else
      format.html { render :edit }
      format.json { render json: @store.errors, status: :unprocessable_entity }
    end
  end
end

private
  
def set_store
  @store = Store.find(params[:id])
end

def store_params
  params.require(:store).permit(:name, :url, :address,
    addresses_attributes: [
      :name, :latitude, :longitude
      ])
end

end