# == Schema Information
#
# Table name: doctor_sessions
#
#  id            :integer          not null, primary key
#  patient_id    :integer
#  doctor_id     :integer
#  session_key   :text
#  is_valid      :boolean          default(TRUE)
#  status        :string(255)      default("INITIALIZED")
#  completed     :boolean
#  start_time    :datetime
#  end_time      :datetime
#  created_at    :datetime
#  updated_at    :datetime
#  invitation_id :integer
#

class DoctorSession < ActiveRecord::Base

  belongs_to :doctor
  belongs_to :invitation
  belongs_to :user, foreign_key: :patient_id

  STATUS = ['ACCEPTED', 'REJECTED', 'INITIALIZED', 'COMPLETED']

  STATUS.each do |status|
    define_method "#{status.downcase}?" do
      self.status == status
    end
  end

  def implode_session
    self.is_valid=false
    self.session_key=nil
    save!
  end

  def generate_session_key
   key = (OTSDK.create_session Time.now.to_s + Random.rand.to_s).session_id
   update_attribute :session_key, key
  end

  private

  def create_session_on_persistence
    generate_session_key
  end
  after_create :create_session_on_persistence



end
