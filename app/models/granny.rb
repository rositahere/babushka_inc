class Granny < ApplicationRecord
  belongs_to :user, optional: true
  has_many :appointments

  validates_presence_of :description
end
