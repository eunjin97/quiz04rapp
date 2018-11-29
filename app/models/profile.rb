class Profile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length:{minimum:1,maximum:30}
  VALID_PHONE_NUMBER = /\A010([1-9]{1}[0-9]{3})([0-9]{4})\z/
  validates :mobile, presence: true, format: {with: VALID_PHONE_NUMBER}, uniqueness: true
  
end
