class JobPost < ApplicationRecord

has_many :offers
has_many :appointments
belongs_to :client, foreign_key: :client_id , class_name: "User"
# belongs_to :job


end
