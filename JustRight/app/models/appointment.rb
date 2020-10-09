class Appointment < ApplicationRecord

belongs_to :offer
belongs_to :job_post
has_one :caregiver, through: :job_post
has_one :client, through: :job_post

end
