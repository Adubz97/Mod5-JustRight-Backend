class User < ApplicationRecord

  has_many :experiences, foreign_key: :caregiver_id
  has_many :jobs, through: :experiences

  has_many :posted_jobs, foreign_key: :client_id, class_name: "JobPost"
  has_many :recieved_offers, through: :posted_jobs

  has_many :submitted_offers, foreign_key: :caregiver_id, class_name: "Offer"
  has_many :potential_jobs, through: :submitted_offers

  #client
  has_many :client_appointments, through: :posted_jobs

  #caregiver
  has_many :confirmed_jobs, foreign_key: :caregiver_id, class_name: "JobPost"
  has_many :caregiver_appointments, through: :confirmed_jobs


  has_many :appointments, through: :offers

  has_secure_password

  # validates :username, uniqueness: {case_sensitive: false}
  # validates :password, length: {minimum: 6}

end
