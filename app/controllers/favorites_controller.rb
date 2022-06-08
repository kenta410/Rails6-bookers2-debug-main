class FavoritesController < ApplicationController
  before_action :authenticate_user!
  def create
    user = User.find(params[:user_id])
    current_user.favorite(user)
    redirect_to request.referer
  end
  
  def destroy
    user = User.find(params[:user_id])
    current_user.un
  end
end
