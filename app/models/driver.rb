class Driver < ActiveRecord::Base
  validates :name, presence: true
  validates :final_location, presence: true
end
