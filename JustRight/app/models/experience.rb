class Experience < ApplicationRecord

belongs_to :job
belongs_to :caregiver, class_name: "User"

end
