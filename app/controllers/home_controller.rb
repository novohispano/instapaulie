class HomeController < ApplicationController
  def index
    @instagram = Instagram.user_recent_media(20784237, {:count => 10})
  end
end
