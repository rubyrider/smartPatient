class AddOnlineToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :counseling_hour_start, :time
    add_column :doctors, :counseling_hour_end, :time
  end
end
