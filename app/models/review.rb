# == Schema Information
#
# Table name: reviews
#
#  id                :integer          not null, primary key
#  user_id           :string(255)
#  doctor_id         :string(255)
#  point             :string(255)
#  review_ability_id :integer
#  can_edit          :boolean
#  created_at        :datetime
#  updated_at        :datetime
#

class Review < ActiveRecord::Base

end
