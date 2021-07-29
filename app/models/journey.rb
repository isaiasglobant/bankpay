class Journey < ActiveRecord::Base
  belongs_to :rider
  belongs_to :driver

  validates :origin, presence: true
  validates :destination, presence: true
end
