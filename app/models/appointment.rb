class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :granny
  has_one :review

  # validates_presence_of :date, :time, :location
end
