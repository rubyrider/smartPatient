# == Schema Information
#
# Table name: doctors
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  title                 :string(255)
#  experience            :string(255)
#  active                :boolean          default(TRUE)
#  doc_code              :string(255)
#  password_digest       :string(255)
#  age                   :string(255)
#  tag_line              :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#  online                :boolean
#  latitude              :decimal(10, 6)
#  longitude             :decimal(10, 6)
#  street_address        :string(255)
#  city                  :string(255)
#  state                 :string(255)
#  country               :string(255)
#  counseling_hour_start :time
#  counseling_hour_end   :time
#

class Doctor < ActiveRecord::Base

  include Constants

  has_secure_password

  validates_presence_of :password, :on => :create
  validates :doc_code, :uniqueness => true
  validates :tag_line, :title, :experience, :age, presence: true

  geocoded_by :street_address   # can also be an IP address
  after_validation :geocode

  #reverse_geocoded_by :latitude, :longitude
  #after_validation :reverse_geocode

  def professional_name
    "#{title.humanize} #{name}"
  end

  def available_now?
    online || false
  end


end
