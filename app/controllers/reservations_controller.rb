class ReservationsController < ApplicationController
  def index
    @reservations = current_inn_owner.reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.inn_owner_id = current_inn_owner.id
    @reservation.inn_id = current_inn_owner.inn.id

    if @reservation.save
      redirect_to reservation_path()
    else


    end
  end

  # def edit

  # end

  # def update

  # end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :date_in, :date_out)
  end
end
