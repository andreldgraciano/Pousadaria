class Reservation < ApplicationRecord
  belongs_to :inn_owner
  belongs_to :inn
end
