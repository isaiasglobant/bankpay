class Journey < ActiveRecord::Base
  belongs_to :rider
  belongs_to :driver
end
