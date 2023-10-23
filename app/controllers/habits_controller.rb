class HabitsController < ApplicationController
  def new
    @habits = Habits.new
  end

  def create
    @habits = Habits.new(habits_params)
    if @habits.save
      redirect_to root_path
    else
      render :new
    end
  end

  def habits_params
    params.require(:habits).permit(:title, :entry_date)
  end
end