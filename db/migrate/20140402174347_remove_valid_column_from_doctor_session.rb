class RemoveValidColumnFromDoctorSession < ActiveRecord::Migration
  def change
    rename_column :doctor_sessions, :valid, :is_valid
  end
end
