class Driver < ActiveRecord::Base
  validates :name, presence: true
  validates :current_location, presence: true
end
