class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments
  has_many :reviews
  has_one :granny
  has_many :granny_appointments, through: :granny, source: :appointments
  has_one_attached :photo
end
