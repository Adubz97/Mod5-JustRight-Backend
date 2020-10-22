class Appointment < ApplicationRecord

belongs_to :offer, optional: true
belongs_to :job_post
has_one :caregiver, through: :offer
has_one :client, through: :job_post

end
