class Tour < ActiveRecord::Base
  belongs_to :tour_packages

  has_many :users, as: :passengers, :through => :reservations
  has_many :reservations, dependent: :destroy
end
