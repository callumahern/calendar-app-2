class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  validates :entry_date, presence: true
  validates :title, presence: true
end
