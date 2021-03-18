class FoodsController < ApplicationController
  def index
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    food = Food.create!(food_params)
    redirect_to food
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def food_params
    params.require(:food).permit(:name, :comment)
  end
end
