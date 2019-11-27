class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @establishments = current_user.establishments
  end

end
