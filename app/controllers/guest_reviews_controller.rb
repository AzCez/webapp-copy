class GuestReviewsController < ApplicationController

  def create
    # Verify si la reservation existe (establishment_id, guest_id, guest_id)

    # Verify si le current guest a le droit de reviews le guest
    @reservation = Reservation.where(
                    id: guest_review_params[:reservation_id],
                    establishment_id: guest_review_params[:establishment_id]
                    ).first

    if !@reservation.nil? && @reservation.establishment.user.id == guest_review_params[:host_id].to_i

      @has_reviewed = GuestReview.where(
                        reservation_id: @reservation.id,
                        guest_id: guest_review_params[:guest_id]
                      ).first

      if @has_reviewed.nil?

         @guest_review = current_user.guest_reviews.create(guest_review_params)
         flash[:success] = "Review créer"

      else

          flash[:success] = "Review mise à jour"

      end

    else
      flash[:alert] = "Nous ne trouvons pas cette reservation"
    end

    redirect_back(fallback_location: request.referer)
  end

  def destroy
    @guest_review = Review.find(params[:id])
    @guest_review.destroy

    redirect_back(fallback_location: request.referer, notice: 'Avis supprimé')
  end

  private

    def guest_review_params
      params.require(:guest_review).permit(:comment, :establishment_id, :reservation_id, :host_id, :star)
    end
end
