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
    redirect_to food, notice: "投稿しました"
  end

  def edit
  end

  def update
    @food.update!(food_params)
    redirect_to @food, notice: "更新しました"
  end

  def destroy
    @food.destroy!
    redirect_to root_path, alert: "削除しました"
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :comment)
  end
end
