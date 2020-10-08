class Job < ApplicationRecord

has_many :jobPosts
has_many :experiences
has_many :caregivers, through: :experiences

end
