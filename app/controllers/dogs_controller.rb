class DogsController < ApplicationController
  before_action :set_dog, only: [:show]

  def new
    @dog = current_user.dogs.build
  end

  def create
    @dog = current_user.dogs.build(dog_params)
    if @dog.save
      flash[:success] = "Dog created successfully!"
      redirect_to dog_path(@dog)
    else
      flash.now[:error] = "Error creating dog. Please check the form and try again"
      render :new
    end
  end

  # GET /dogs
  def index
    @dogs = Dog.all
  end

  # GET /dogs/:id
  def show
  end

  private

  # Use a callback to share the common setup or constraints between actions.
  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :bio, :image, :image_url, :excitement, :energy, :laziness, :fun)
  end
end
