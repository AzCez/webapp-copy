class Establishment < ApplicationRecord

#   geocoded_by :address
#   after_validation :geocode, if: :will_save_change_to_address?


# reverse_geocoded_by :latitude, :longitude do |obj,results|
#   if geo = results.first
#     obj.city = geo.city
#     obj.zipcode = geo.postal_code
#     obj.country = geo.country_code
#   end
# end
# after_validation :reverse_geocode

  belongs_to :user
  has_many :reservations, dependent: :destroy

  has_many :guest_reviews, dependent: :destroy

  validates :home_type, presence: false
  validates :room_type, presence: false
  validates :accommodate, presence: false
  validates :bed_room, presence: false
  validates :bath_room, presence: false

  mount_uploaders :photos, PhotoUploader

  def cover_photo(size)
   # if self.photos.length > 0
   #    self.photos[0].image.url(size)
    # else
      "blank.jpg"
    # end
  end

  def average_rating
    guest_reviews.count == 0? 0 : guest_reviews.average(:star).round(2).to_i
  end

end
