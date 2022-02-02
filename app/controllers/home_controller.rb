class HomeController < ApplicationController

  def index
    logged_in_user
    @user = current_user
  end



end
