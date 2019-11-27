class PhotosController < ApplicationController
  before_action :set_establishment

  def create
    add_more_photos(photos_params[:photos])
    flash[:error] = "Failed uploading photos" unless @establishment.save

    redirect_back(fallback_location: request.referer)
  end

  def destroy
    remove_photo_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting photo" unless @establishment.save

    redirect_back(fallback_location: request.referer)
  end

  private

  def set_establishment
    @establishment = Establishment.find(params[:establishment_id])
  end

  def add_more_photos(new_photos)
    photos = @establishment.photos
    photos += new_photos
    @establishment.photos = photos
  end

  def remove_photo_at_index(index)
    remain_photos = @establishment.photos
    deleted_photo = remain_photos.delete_at(index)
    deleted_photo.try(:remove!)
    @establishment.photos = remain_photos
  end

  def photos_params
    params.require(:establishment).permit({photos: []})
  end
end
