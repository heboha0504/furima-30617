class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :surname, presence: true
  validates :name, presence: true
  validates :birth_day, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
