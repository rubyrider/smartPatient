# == Schema Information
#
# Table name: review_abilities
#
#  id         :integer          not null, primary key
#  doctor_id  :string(255)
#  user_id    :string(255)
#  reviewed   :boolean          default(FALSE)
#  expire_at  :datetime         default(2014-05-04 14:33:36 UTC)
#  created_at :datetime
#  updated_at :datetime
#

class ReviewAbility < ActiveRecord::Base
  
end
