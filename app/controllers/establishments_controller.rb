class EstablishmentsController < ApplicationController
before_action :set_establishment, except: [:index, :new, :create]
before_action :authenticate_user!, except: [:show]
#before_action :is_authorized, only: [:listing, :pricing, :description, :photo_upload, :amenities, :location, :update, :city]


  def index
    @establishments = current_user.establishments
  end

  def new
    @establishment = current_user.establishments.build
  end

  def create
    @establishment = current_user.establishments.build(establishment_params)
    if @establishment.save
      redirect_to listing_establishment_path(@establishment), notice: "Sauvegarder"
    else
      render :new, notice: "Il y a eu un problème lors de la sauvegarde"
    end
  end

  def show

    # MAP MARKERS
   @markers = [{
            lat: @establishment.latitude,
            lng: @establishment.longitude
            # infowindow: render_to_string(partial: "infowindow", locals: { establishment: establishment })
      }]


  end

  def listing
  end

  def pricing
  end

  def description
  end

  def photo_upload
    @photos = @establishment.photos
  end

  def amenities
  end

  def location
  end

  def update
    if @establishment.update(establishment_params)
      flash[:notice] = "Sauvegarder"
    else
      flash[:notice] = "Il y a eu un problème lors de la sauvegarde"
    end
    redirect_back(fallback_location: request.referer)
  end

  private

    def set_establishment
      @establishment = Establishment.find(params[:id])
    end

    def is_authorized
      redirect_to root_path, alert: "Vous n'avez pas la permission!" unless current_user.id == @establishment.user_id
    end

    def establishment_params
      params.require(:establishment).permit(:title, {photos: []}, :statut, :property_type, :full_board, :internet, :parking, :pet, :household_linen, :cleaning_package, :address, :home_type, :room_type, :address_detail, :phone_number, :establishment_name, :pmr_room_type, :email_resa, :channel_manager, :internal_contact, :nurse_name, :nurse_phone, :nurse_email, :nurse_address, :medical_equipement_name, :medical_equipement_phone, :medical_equipement_email, :medical_equipement_address, :medical_equipement_support_name, :medical_equipement_support_phone, :medical_equipement_support_email, :medical_equipement_support_address, :listing_name, :swimming_pool, :suitable_swimming_pool, :television, :washing_machine, :air_conditionning, :kitchen, :elevator, :intercom, :medical_bed, :person_lift, :hearing_handicap, :physical_handicap, :mental_handicap, :visual_handicap, :is_certified, :suitable_shower, :one_level, :allow_immediate_booking, :for_families, :smokers_accepted, :suited_for_event, :beach, :shop, :city_center, :public_transport, :restaurant, :night_life, :flexible, :is_tv, :is_kitchen, :is_air, :is_heating, :is_internet, :active, :smoker_accepted, :is_breakfast, :is_half_board, :is_full_board, :is_parking, :is_cleaning_pack, :is_pet, :known_owner, :is_channel_manager, :breakfast_price, :half_board_price, :full_board_price, :internet_price, :parking_price, :pet_price, :household_linen_price, :cleaning_package_price, :arrival_min_time, :arrival_max_time, :leaving_min_time, :leaving_max_time, :price, :deposit_amount, :tax_amount, :edited_commission, :commission, :fixed_commission, :size, :sink_height, :door_width, :latitude, :longitude, :external_calendar_url, :description, :details_resa, :info_commission, :summary, :capacity, :room, :bath_rooms, :bed, :accommodate, :bed_room, :bath_room, :instant, :mobee_classification, :stars_classification, :user_id, :city)
    end
end
