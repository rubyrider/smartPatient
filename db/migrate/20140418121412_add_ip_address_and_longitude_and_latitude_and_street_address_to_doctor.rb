class AddIpAddressAndLongitudeAndLatitudeAndStreetAddressToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :latitude, :decimal, {:precision=>10, :scale=>6}
    add_column :doctors, :longitude, :decimal, {:precision=>10, :scale=>6}
    add_column :doctors, :street_address, :string
    add_column :doctors, :city, :string
    add_column :doctors, :state, :string
    add_column :doctors, :country, :string
  end
end
