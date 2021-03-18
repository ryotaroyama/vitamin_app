class FoodsController < ApplicationController
  def index
    @foods = Food.order(id: :asc)
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    food = Food.create!(food_params)
    redirect_to root_path
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    food = Food.find(params[:id])
    food.update!(food_params)
    redirect_to food
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy!
    redirect_to root_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :comment)
  end
end
