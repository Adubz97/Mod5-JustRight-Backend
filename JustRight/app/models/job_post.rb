class JobPost < ApplicationRecord

has_many :offers
belongs_to :client, class_name: :"User"
belongs_to :job

end
