require "application_system_test_case"

class EstablishmentsTest < ApplicationSystemTestCase
  setup do
    @establishment = establishments(:one)
  end

  test "visiting the index" do
    visit establishments_url
    assert_selector "h1", text: "Establishments"
  end

  test "creating a Establishment" do
    visit establishments_url
    click_on "New Establishment"

    fill_in "Accommodate", with: @establishment.accommodate
    check "Active" if @establishment.active
    fill_in "Address", with: @establishment.address
    fill_in "Address detail", with: @establishment.address_detail
    check "Air conditionning" if @establishment.air_conditionning
    check "Allow immediate booking" if @establishment.allow_immediate_booking
    fill_in "Arrival max time", with: @establishment.arrival_max_time
    fill_in "Arrival min time", with: @establishment.arrival_min_time
    fill_in "Bath room", with: @establishment.bath_room
    fill_in "Bath rooms", with: @establishment.bath_rooms
    check "Beach" if @establishment.beach
    fill_in "Bed", with: @establishment.bed
    fill_in "Bed room", with: @establishment.bed_room
    fill_in "Breakfast price", with: @establishment.breakfast_price
    fill_in "Capacity", with: @establishment.capacity
    fill_in "Channel manager", with: @establishment.channel_manager
    check "City center" if @establishment.city_center
    fill_in "Cleaning package", with: @establishment.cleaning_package
    fill_in "Cleaning package price", with: @establishment.cleaning_package_price
    fill_in "Commission", with: @establishment.commission
    fill_in "Deposit amount", with: @establishment.deposit_amount
    fill_in "Description", with: @establishment.description
    fill_in "Details resa", with: @establishment.details_resa
    fill_in "Door width", with: @establishment.door_width
    fill_in "Edited commission", with: @establishment.edited_commission
    check "Elevator" if @establishment.elevator
    fill_in "Email resa", with: @establishment.email_resa
    fill_in "Establishment name", with: @establishment.establishment_name
    fill_in "External calendar url", with: @establishment.external_calendar_url
    fill_in "Fixed commission", with: @establishment.fixed_commission
    check "Flexible" if @establishment.flexible
    check "For families" if @establishment.for_families
    fill_in "Full board", with: @establishment.full_board
    fill_in "Full board price", with: @establishment.full_board_price
    fill_in "Half board price", with: @establishment.half_board_price
    check "Hearing handicap" if @establishment.hearing_handicap
    fill_in "Home type", with: @establishment.home_type
    fill_in "Household linen", with: @establishment.household_linen
    fill_in "Household linen price", with: @establishment.household_linen_price
    fill_in "Info commission", with: @establishment.info_commission
    fill_in "Instant", with: @establishment.instant
    check "Intercom" if @establishment.intercom
    fill_in "Internal contact", with: @establishment.internal_contact
    fill_in "Internet", with: @establishment.internet
    fill_in "Internet price", with: @establishment.internet_price
    check "Is air" if @establishment.is_air
    check "Is breakfast" if @establishment.is_breakfast
    check "Is certified" if @establishment.is_certified
    check "Is channel manager" if @establishment.is_channel_manager
    check "Is cleaning pack" if @establishment.is_cleaning_pack
    check "Is full board" if @establishment.is_full_board
    check "Is half board" if @establishment.is_half_board
    check "Is heating" if @establishment.is_heating
    check "Is internet" if @establishment.is_internet
    check "Is kitchen" if @establishment.is_kitchen
    check "Is parking" if @establishment.is_parking
    check "Is pet" if @establishment.is_pet
    check "Is tv" if @establishment.is_tv
    check "Kitchen" if @establishment.kitchen
    check "Known owner" if @establishment.known_owner
    fill_in "Latitude", with: @establishment.latitude
    fill_in "Leaving max time", with: @establishment.leaving_max_time
    fill_in "Leaving min time", with: @establishment.leaving_min_time
    fill_in "Listing name", with: @establishment.listing_name
    fill_in "Longitude", with: @establishment.longitude
    check "Medical bed" if @establishment.medical_bed
    fill_in "Medical equipement address", with: @establishment.medical_equipement_address
    fill_in "Medical equipement email", with: @establishment.medical_equipement_email
    fill_in "Medical equipement name", with: @establishment.medical_equipement_name
    fill_in "Medical equipement phone", with: @establishment.medical_equipement_phone
    fill_in "Medical equipement support address", with: @establishment.medical_equipement_support_address
    fill_in "Medical equipement support email", with: @establishment.medical_equipement_support_email
    fill_in "Medical equipement support name", with: @establishment.medical_equipement_support_name
    fill_in "Medical equipement support phone", with: @establishment.medical_equipement_support_phone
    check "Mental handicap" if @establishment.mental_handicap
    fill_in "Mobee classification", with: @establishment.mobee_classification
    check "Night life" if @establishment.night_life
    fill_in "Nurse address", with: @establishment.nurse_address
    fill_in "Nurse email", with: @establishment.nurse_email
    fill_in "Nurse name", with: @establishment.nurse_name
    fill_in "Nurse phone", with: @establishment.nurse_phone
    check "One level" if @establishment.one_level
    fill_in "Parking", with: @establishment.parking
    fill_in "Parking price", with: @establishment.parking_price
    check "Person lift" if @establishment.person_lift
    fill_in "Pet", with: @establishment.pet
    fill_in "Pet price", with: @establishment.pet_price
    fill_in "Phone number", with: @establishment.phone_number
    check "Physical handicap" if @establishment.physical_handicap
    fill_in "Pmr room type", with: @establishment.pmr_room_type
    fill_in "Price", with: @establishment.price
    fill_in "Property type", with: @establishment.property_type
    check "Public transport" if @establishment.public_transport
    check "Restaurant" if @establishment.restaurant
    fill_in "Room", with: @establishment.room
    fill_in "Room type", with: @establishment.room_type
    check "Shop" if @establishment.shop
    fill_in "Sink height", with: @establishment.sink_height
    fill_in "Size", with: @establishment.size
    check "Smoker accepted" if @establishment.smoker_accepted
    check "Smokers accepted" if @establishment.smokers_accepted
    fill_in "Stars classification", with: @establishment.stars_classification
    fill_in "Statut", with: @establishment.statut
    check "Suitable shower" if @establishment.suitable_shower
    check "Suitable swimming pool" if @establishment.suitable_swimming_pool
    check "Suited for event" if @establishment.suited_for_event
    fill_in "Summary", with: @establishment.summary
    check "Swimming pool" if @establishment.swimming_pool
    fill_in "Tax amount", with: @establishment.tax_amount
    check "Television" if @establishment.television
    fill_in "Title", with: @establishment.title
    fill_in "User", with: @establishment.user_id
    check "Visual handicap" if @establishment.visual_handicap
    fill_in "Washing machine", with: @establishment.washing_machine
    click_on "Create Establishment"

    assert_text "Establishment was successfully created"
    click_on "Back"
  end

  test "updating a Establishment" do
    visit establishments_url
    click_on "Edit", match: :first

    fill_in "Accommodate", with: @establishment.accommodate
    check "Active" if @establishment.active
    fill_in "Address", with: @establishment.address
    fill_in "Address detail", with: @establishment.address_detail
    check "Air conditionning" if @establishment.air_conditionning
    check "Allow immediate booking" if @establishment.allow_immediate_booking
    fill_in "Arrival max time", with: @establishment.arrival_max_time
    fill_in "Arrival min time", with: @establishment.arrival_min_time
    fill_in "Bath room", with: @establishment.bath_room
    fill_in "Bath rooms", with: @establishment.bath_rooms
    check "Beach" if @establishment.beach
    fill_in "Bed", with: @establishment.bed
    fill_in "Bed room", with: @establishment.bed_room
    fill_in "Breakfast price", with: @establishment.breakfast_price
    fill_in "Capacity", with: @establishment.capacity
    fill_in "Channel manager", with: @establishment.channel_manager
    check "City center" if @establishment.city_center
    fill_in "Cleaning package", with: @establishment.cleaning_package
    fill_in "Cleaning package price", with: @establishment.cleaning_package_price
    fill_in "Commission", with: @establishment.commission
    fill_in "Deposit amount", with: @establishment.deposit_amount
    fill_in "Description", with: @establishment.description
    fill_in "Details resa", with: @establishment.details_resa
    fill_in "Door width", with: @establishment.door_width
    fill_in "Edited commission", with: @establishment.edited_commission
    check "Elevator" if @establishment.elevator
    fill_in "Email resa", with: @establishment.email_resa
    fill_in "Establishment name", with: @establishment.establishment_name
    fill_in "External calendar url", with: @establishment.external_calendar_url
    fill_in "Fixed commission", with: @establishment.fixed_commission
    check "Flexible" if @establishment.flexible
    check "For families" if @establishment.for_families
    fill_in "Full board", with: @establishment.full_board
    fill_in "Full board price", with: @establishment.full_board_price
    fill_in "Half board price", with: @establishment.half_board_price
    check "Hearing handicap" if @establishment.hearing_handicap
    fill_in "Home type", with: @establishment.home_type
    fill_in "Household linen", with: @establishment.household_linen
    fill_in "Household linen price", with: @establishment.household_linen_price
    fill_in "Info commission", with: @establishment.info_commission
    fill_in "Instant", with: @establishment.instant
    check "Intercom" if @establishment.intercom
    fill_in "Internal contact", with: @establishment.internal_contact
    fill_in "Internet", with: @establishment.internet
    fill_in "Internet price", with: @establishment.internet_price
    check "Is air" if @establishment.is_air
    check "Is breakfast" if @establishment.is_breakfast
    check "Is certified" if @establishment.is_certified
    check "Is channel manager" if @establishment.is_channel_manager
    check "Is cleaning pack" if @establishment.is_cleaning_pack
    check "Is full board" if @establishment.is_full_board
    check "Is half board" if @establishment.is_half_board
    check "Is heating" if @establishment.is_heating
    check "Is internet" if @establishment.is_internet
    check "Is kitchen" if @establishment.is_kitchen
    check "Is parking" if @establishment.is_parking
    check "Is pet" if @establishment.is_pet
    check "Is tv" if @establishment.is_tv
    check "Kitchen" if @establishment.kitchen
    check "Known owner" if @establishment.known_owner
    fill_in "Latitude", with: @establishment.latitude
    fill_in "Leaving max time", with: @establishment.leaving_max_time
    fill_in "Leaving min time", with: @establishment.leaving_min_time
    fill_in "Listing name", with: @establishment.listing_name
    fill_in "Longitude", with: @establishment.longitude
    check "Medical bed" if @establishment.medical_bed
    fill_in "Medical equipement address", with: @establishment.medical_equipement_address
    fill_in "Medical equipement email", with: @establishment.medical_equipement_email
    fill_in "Medical equipement name", with: @establishment.medical_equipement_name
    fill_in "Medical equipement phone", with: @establishment.medical_equipement_phone
    fill_in "Medical equipement support address", with: @establishment.medical_equipement_support_address
    fill_in "Medical equipement support email", with: @establishment.medical_equipement_support_email
    fill_in "Medical equipement support name", with: @establishment.medical_equipement_support_name
    fill_in "Medical equipement support phone", with: @establishment.medical_equipement_support_phone
    check "Mental handicap" if @establishment.mental_handicap
    fill_in "Mobee classification", with: @establishment.mobee_classification
    check "Night life" if @establishment.night_life
    fill_in "Nurse address", with: @establishment.nurse_address
    fill_in "Nurse email", with: @establishment.nurse_email
    fill_in "Nurse name", with: @establishment.nurse_name
    fill_in "Nurse phone", with: @establishment.nurse_phone
    check "One level" if @establishment.one_level
    fill_in "Parking", with: @establishment.parking
    fill_in "Parking price", with: @establishment.parking_price
    check "Person lift" if @establishment.person_lift
    fill_in "Pet", with: @establishment.pet
    fill_in "Pet price", with: @establishment.pet_price
    fill_in "Phone number", with: @establishment.phone_number
    check "Physical handicap" if @establishment.physical_handicap
    fill_in "Pmr room type", with: @establishment.pmr_room_type
    fill_in "Price", with: @establishment.price
    fill_in "Property type", with: @establishment.property_type
    check "Public transport" if @establishment.public_transport
    check "Restaurant" if @establishment.restaurant
    fill_in "Room", with: @establishment.room
    fill_in "Room type", with: @establishment.room_type
    check "Shop" if @establishment.shop
    fill_in "Sink height", with: @establishment.sink_height
    fill_in "Size", with: @establishment.size
    check "Smoker accepted" if @establishment.smoker_accepted
    check "Smokers accepted" if @establishment.smokers_accepted
    fill_in "Stars classification", with: @establishment.stars_classification
    fill_in "Statut", with: @establishment.statut
    check "Suitable shower" if @establishment.suitable_shower
    check "Suitable swimming pool" if @establishment.suitable_swimming_pool
    check "Suited for event" if @establishment.suited_for_event
    fill_in "Summary", with: @establishment.summary
    check "Swimming pool" if @establishment.swimming_pool
    fill_in "Tax amount", with: @establishment.tax_amount
    check "Television" if @establishment.television
    fill_in "Title", with: @establishment.title
    fill_in "User", with: @establishment.user_id
    check "Visual handicap" if @establishment.visual_handicap
    fill_in "Washing machine", with: @establishment.washing_machine
    click_on "Update Establishment"

    assert_text "Establishment was successfully updated"
    click_on "Back"
  end

  test "destroying a Establishment" do
    visit establishments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Establishment was successfully destroyed"
  end
end
