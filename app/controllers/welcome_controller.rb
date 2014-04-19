class WelcomeController < ApplicationController
  def index
    search = params[:q]
    @doctors = Doctor.near current_position, 5
    @hash = Gmaps4rails.build_markers(@doctors) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end

  end
end
