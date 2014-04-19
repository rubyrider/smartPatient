class AjaxController < ApplicationController
  def fetch_location
     @data = Doctor.geo_locations
     render json: @data.to_json
  end

  def update_doctors_data
     distance = params[:d] || 3
     coords = [params[:lat].to_f, params[:lng].to_f]
     @doctors = Doctor.near(coords, distance)
     @hash = Gmaps4rails.build_markers(@doctors) do |user, marker|
       marker.lat user.latitude.to_s
       marker.lng user.longitude.to_s
       marker.infowindow user.professional_name+"\n"+user.street_address
     end
     center_location = {}
     center_location[:lat] = params[:lat].to_f
     center_location[:lng] = params[:lng].to_f
     @hash << center_location
  end

  def set_current_position
    current_position = params[:lat].to_s, params[:lng].to_i
  end
end
