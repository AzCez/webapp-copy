class CreateEstablishments < ActiveRecord::Migration[5.2]
  def change
    create_table :establishments do |t|
      t.string :title
      t.string :statut
      t.string :breakfast
      t.string :property_type
      t.string :full_board
      t.string :internet
      t.string :parking
      t.string :pet
      t.string :household_linen
      t.string :cleaning_package
      t.string :address
      t.string :home_type
      t.string :room_type
      t.string :address_detail
      t.string :phone_number
      t.string :establishment_name
      t.string :pmr_room_type
      t.string :email_resa
      t.string :situation
      t.string :channel_manager
      t.string :internal_contact
      t.string :nurse_name
      t.string :nurse_phone
      t.string :nurse_email
      t.string :nurse_address
      t.string :medical_equipement_name
      t.string :medical_equipement_phone
      t.string :medical_equipement_email
      t.string :medical_equipement_address
      t.string :medical_equipement_support_name
      t.string :medical_equipement_support_phone
      t.string :medical_equipement_support_email
      t.string :medical_equipement_support_address
      t.string :listing_name
      t.boolean :swimming_pool
      t.boolean :suitable_swimming_pool
      t.boolean :television
      t.string :washing_machine
      t.boolean :air_conditionning
      t.boolean :kitchen
      t.boolean :elevator
      t.boolean :intercom
      t.boolean :medical_bed
      t.boolean :person_lift
      t.boolean :hearing_handicap
      t.boolean :physical_handicap
      t.boolean :mental_handicap
      t.boolean :visual_handicap
      t.boolean :is_certified
      t.boolean :suitable_shower
      t.boolean :one_level
      t.boolean :allow_immediate_booking
      t.boolean :for_families
      t.boolean :smokers_accepted
      t.boolean :suited_for_event
      t.boolean :beach
      t.boolean :shop
      t.boolean :city_center
      t.boolean :public_transport
      t.boolean :restaurant
      t.boolean :night_life
      t.boolean :flexible
      t.boolean :is_tv
      t.boolean :is_kitchen
      t.boolean :is_air
      t.boolean :is_heating
      t.boolean :is_internet
      t.boolean :active
      t.boolean :smoker_accepted
      t.boolean :is_breakfast
      t.boolean :is_half_board
      t.boolean :is_full_board
      t.boolean :is_parking
      t.boolean :is_cleaning_pack
      t.boolean :is_pet
      t.boolean :known_owner
      t.boolean :is_channel_manager
      t.float :breakfast_price
      t.float :half_board_price
      t.float :full_board_price
      t.float :internet_price
      t.float :parking_price
      t.float :pet_price
      t.float :household_linen_price
      t.float :cleaning_package_price
      t.float :arrival_min_time
      t.float :arrival_max_time
      t.float :leaving_min_time
      t.float :leaving_max_time
      t.float :price
      t.float :deposit_amount
      t.float :tax_amount
      t.float :edited_commission
      t.float :commission
      t.float :fixed_commission
      t.float :size
      t.float :sink_height
      t.float :door_width
      t.float :latitude
      t.float :longitude
      t.text :external_calendar_url
      t.text :description
      t.text :details_resa
      t.text :info_commission
      t.text :summary
      t.integer :capacity
      t.integer :room
      t.integer :bath_rooms
      t.integer :bed
      t.integer :accommodate
      t.integer :bed_room
      t.integer :bath_room
      t.integer :instant, default: 1
      t.integer :mobee_classification
      t.integer :stars_classification
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
