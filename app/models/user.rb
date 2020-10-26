class User < ApplicationRecord
  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :sruname, presence: true
  validates :name, presence: true
  validates :brith_day: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
