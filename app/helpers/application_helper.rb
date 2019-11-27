module ApplicationHelper

  def user_avatar(user, size=40)
    if user.avatar.attached?
      user.avatar.variant(resize: "#{size}x#{size}!")
    # if user.image
    #   "http://graph.facebook.com/#{user.uid}/picture?type=large"
    else
      gravatar_image_url(user.email, size: size)
    end
  end
end



