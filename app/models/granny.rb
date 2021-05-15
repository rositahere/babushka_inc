class Granny < ApplicationRecord
  belongs_to :user, optional: true
  has_many :appointments
  has_many_attached :photos

  validates_presence_of :description
end
