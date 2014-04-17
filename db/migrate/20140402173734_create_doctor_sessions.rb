class CreateDoctorSessions < ActiveRecord::Migration
  def change
    create_table :doctor_sessions do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.text :session_key
      t.boolean :valid, default: false
      t.string :status, default: 'INITIALIZED'
      t.boolean :completed, defined: false
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
    add_index :doctor_sessions, :patient_id
    add_index :doctor_sessions, :doctor_id
  end
end
