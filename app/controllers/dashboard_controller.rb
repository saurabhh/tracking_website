class DashboardController < ApplicationController

  skip_before_filter :authenticate_user!

  def index
  end

end
