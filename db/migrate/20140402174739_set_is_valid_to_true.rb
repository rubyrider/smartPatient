class SetIsValidToTrue < ActiveRecord::Migration
  def change
    change_column :doctor_sessions, :is_valid, :boolean, {default: true}
  end
end
