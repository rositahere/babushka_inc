class Review < ApplicationRecord
  belongs_to :appointment
  belongs_to :user, optional: true

  validates_presence_of :rating, :description
end
