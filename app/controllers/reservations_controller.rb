class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def create
    establishment = Establishment.find(params[:establishment_id])

    if current_user == establishment.user
      flash[:alert] = "Vous ne pouvez pas reserver votre bien!"
    else
      start_date = Date.parse(reservation_params[:start_date])
      end_date = Date.parse(reservation_params[:end_date])
      days = (end_date - start_date).to_i + 1

      @reservation = current_user.reservations.build(reservation_params)
      @reservation.establishment = establishment
      @reservation.price = establishment.price
      @reservation.total = establishment.price * days
      @reservation.save

      flash[:notice] = "reservation ok"
    end

    redirect_to establishment

  end

  def your_trips
    @trips = current_user.reservations.order(start_date: :asc)
  end

  def your_reservations
    @establishments = current_user.establishments
  end

  private

    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date)
    end

end
