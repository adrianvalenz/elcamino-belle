class Technician < ApplicationRecord
  has_many :appointments
  has_many :clients, through: :appointments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable
  
  validates_presence_of :first_name, :last_name
end
