class AjaxController < ApplicationController
  def fetch_location
     @data = Doctor.geo_locations
     render json: @data.to_json
  end
end
