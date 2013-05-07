class HomeController < ApplicationController
  def index
    query = params[:user] || 'mexicancurious'

    @user ||= Instagram.user_search(query).first
    if @user == nil
      flash[:notice] = "The user doesn't exist"
    else
      @instagram = Instagram.user_recent_media(@user.id, {:count => 12})
    end
  end
end