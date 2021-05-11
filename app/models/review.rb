class Review < ApplicationRecord
  belongs_to :appointment
  belongs_to :user

  validates_presence_of :rating, :description
end
