class User < ApplicationRecord

  has_many :experience
  has_many :jobs, through: :experience

  has_many :jobPost, foreign_key: :client_id, class_name: :"User"
  has_many :offers, foreign_key: :caregiver_id, class_name: :"User"

  has_many :appointments, through: offer

  has_secure_password

  # validates :username, uniqueness: {case_sensitive: false}
  # validates :password, length: {minimum: 6}
  
end
