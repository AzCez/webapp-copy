class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

         # Below for testing pruposes
   # devise :database_authenticatable, :registerable,
   #          :recoverable,
   #          :rememberable,
   #          :validatable,
   #          :trackable,
   #          :omniauthable,
   #          :confirmable



  def self.from_omniauth(auth)
    user = User.where(email: auth.info.email).first

    if user
      return user
    else
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0, 20]
        user.name = auth.info.name   # assuming the user model has a name
        user.image = auth.info.image # assuming the user model has an image
        user.uid = auth.uid
        user.provider = auth.provider

        # If you are using confirmable and the provider(s) you use validate emails,
        # uncomment the line below to skip the confirmation emails.
        user.skip_confirmation!
     end
   end
  end


  has_many :establishments
  has_many :reservations

  has_many :guest_reviews, class_name: "GuestReview", foreign_key: "guest_id", dependent: :destroy
  has_many :host_reviews, class_name: "HostReview", foreign_key: "host_id", dependent: :destroy

  #validation des parametres de connexion pour devise
  validates :first_name, presence: false, length: { maximum: 50 }
  validates :last_name, presence: false, length: { maximum: 50 }

  #nest de l'avatar
  mount_uploader :avatar, AvatarUploader

end
