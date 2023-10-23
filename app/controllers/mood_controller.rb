class MoodController < ApplicationController
  def new
    @mood = Mood.new
  end

  def create
    @mood = Mood.new(mood_params)
    if @mood.save
      redirect_to root_path
    else
      'hello'
    end
  end

  def mood_params
    params.require(:mood).permit(:title, :entry_date)
  end
end