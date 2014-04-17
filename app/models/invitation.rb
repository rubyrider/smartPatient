# == Schema Information
#
# Table name: invitations
#
#  id         :integer          not null, primary key
#  doctor_id  :string(255)
#  user_id    :string(255)
#  status     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Invitation < ActiveRecord::Base
  has_one :doctor_session
  belongs_to :doctor
  belongs_to :user

  def create_doctor_session
      DoctorSession.create!({
          doctor_id: doctor_id,
          patient_id: user_id,
          status: 'ACCEPTED',
          invitation_id: self.id

                             })
  end

  after_create :create_doctor_session

end
