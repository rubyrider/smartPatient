module Constants

  extend ActiveSupport::Concern
  LOCATION = %w(dhanmondi central_road kalabagan new_market science_laboratory green_corner kawran_bazar)

  module ClassMethods
    def geo_locations
      coordinates = []
      LOCATION.each do |location|
        location = location.gsub('_', ' ').humanize + "Dhaka"
         lat_lng =  Geocoder.coordinates(location)
         hash = {
             lat: lat_lng[0],
             lng: lat_lng[1]
         }
        coordinates << hash
      end
      coordinates
    end
  end

end