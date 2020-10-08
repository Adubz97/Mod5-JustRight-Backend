class Offer < ApplicationRecord

belongs_to :caregiver, class_name: "User"
belongs_to :jobPost
has_one :appointment

end
