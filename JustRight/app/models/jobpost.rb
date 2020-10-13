class JobPost < ApplicationRecord

has_many :offers
has_many :appointments
belongs_to :user
belongs_to :job


end
