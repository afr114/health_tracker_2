class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user_id = params[:user_id]
    @food.goal_id = params[:goal_id]
    @food.save
    redirect_to root_path
  end

  def edit
  end

  def update
    @food.update(food_params)
    redirect_to root_path
  end

  def destroy
    @food.destroy
  end

  private

  def food_params
    params.require(:food).permit(:name, :calories, :user_id, :goal_id)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
