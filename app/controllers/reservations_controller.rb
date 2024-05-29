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

  end

  # def edit

  # end

  # def update

  # end
end
