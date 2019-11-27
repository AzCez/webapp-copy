class PagesController < ApplicationController
  skip_before_action :authenticate_user!, raise: false
  skip_after_action :verify_autorized, raise: false

  def home
    @establishment = Establishment.where(active: true).limit(9)

  end

  def handivoyage
    @establishment = Establishment.where(active: true).limit(9)

  end
#SEARCH
  def search

    # MAPBOX RETURNS ONLY ESTABLISHMENTS WITH COORDINATE ON MAP

    @establishments = Establishment.geocoded

    #Search V2.0 with elastick
    #@establishments = Establishment.search(params.fetch(:q, '*'))

    # Search V1.0 with ransack
    # STEP 1
    if params[:search].present? && params[:search] != ""
      session[:loc_search] = params[:search]
    end

    # STEP 2
    if session[:loc_search] && session[:loc_search] != ""
      @establishments_address = Establishment.where(active: true).near(session[:loc_search], 100, order: 'distance')
    else
      @establishments_address = Establishment.where(active: true).all
    end

    # STEP 3
    @search = @establishments_address.ransack(params[:q])
    @establishments = @search.result


    # MAP Marker Points on Mapbox according to search params

    @markers = @establishments.map do |establishment|
          {
            lat: establishment.latitude,
            lng: establishment.longitude
            # infowindow: render_to_string(partial: "infowindow", locals: { establishment: establishment })
      }
      end

    @arrEstablishments = @establishments.to_a

    # STEP 4
    # if (params[:start_date] && params[:end_date] && !params[:start_date].empty? &&  !params[:end_date].empty?)

    #   start_date = Date.parse(params[:start_date])
    #   end_date = Date.parse(params[:end_date])

    #   @establishments.each do |establishment|

    #     not_available = establishment.reservations.where(
    #       "((? <= start_date AND start_date <= ?)
    #       OR (? <= end_date AND end_date <= ?)
    #       OR (start_date < ? AND ? < end_date))
    #       AND status = ?",
    #       start_date, end_date,
    #       start_date, end_date,
    #       start_date, end_date,
    #       1
    #     ).limit(1)

    #     not_available_in_calendar = Calendar.where(
    #       "establishment_id = ? AND status = ? AND day <= ? AND day >= ?",
    #       establishment.id, 1, end_date, start_date
    #     ).limit(1)

    #     if not_available.length > 0 || not_available_in_calendar.length > 0
    #       @arrEstablishment.delete(establishment)
    #     end
    #   end
    # end
  end

end
