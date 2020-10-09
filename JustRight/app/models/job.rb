class Job < ApplicationRecord

has_many :job_posts
has_many :experiences
has_many :caregivers, through: :experiences

end
