class Offer < ApplicationRecord

has_one :appointment
belongs_to :caregiver, class_name: "User"
belongs_to :job_post

end
