# frozen_string_literal: true

class HomeController < ApplicationController
  ENTRY_MODELS = [Food, Finance, Mood, Habits].freeze
  def homepage
    @entries = @entries = ENTRY_MODELS.flat_map do |model|
      model.where(entry_date: DateTime.now.beginning_of_month.beginning_of_week..DateTime.now.end_of_month.end_of_week)
    end
  end
end
