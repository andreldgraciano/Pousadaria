class Reservation < ApplicationRecord
  belongs_to :inn_owner
  belongs_to :inn

  # validate :insufficient_vacancies

  private

  # def insufficient_vacancies
  #   vacancies = 0
  #   inn_rooms = current_inn_owner.inn_rooms
  #   inn_rooms.each do |room|
  #     vacancies += room.guest_limit
  #   end

  #   if amount_guest > vacancies
  #     errors.add(:amount_guest, 'Maior que a disponibilidade oferecida pela pousada')
  #   end
  # end
end
