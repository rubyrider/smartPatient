class AddOnlineToDocor < ActiveRecord::Migration
  def change
    add_column :doctors, :online, :boolean
  end
end
