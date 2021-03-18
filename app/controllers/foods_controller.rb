class FoodsController < ApplicationController
  before_action :set_food, only: %i[show edit update destroy]

  def index
    @foods = Food.order(id: :asc)
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    food = Food.create!(food_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    @food.update!(food_params)
    redirect_to food
  end

  def destroy
    @food.destroy!
    redirect_to root_path
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :comment)
  end
end
