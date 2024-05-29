class Api::V1::RoomsController < Api::V1::ApiController
  def show
    room = InnRoom.find(params[:id])
    render status: 200, json: room.as_json(except: [:created_at, :updated_at, :inn_id])
  end

  private

  def return_404
    render status: 404
  end

  def return_500
    render status: 500
  end
end
