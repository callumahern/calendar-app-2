class FoodController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    @food = Food.new(mood_params)
    if @food.save
      redirect_to root_path
    else
      'hello'
    end
  end

  def mood_params
    params.require(:food).permit(:title, :healthy, :entry_date)
  end
end