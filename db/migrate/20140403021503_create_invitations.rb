class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :doctor_id
      t.string :user_id
      t.string :status
      t.timestamps
    end
    add_column :doctor_sessions, :invitation_id, :integer
    add_index :doctor_sessions, :invitation_id
    add_index :invitations, :doctor_id
    add_index :invitations, :user_id
  end
end
