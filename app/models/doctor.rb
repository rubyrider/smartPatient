# == Schema Information
#
# Table name: doctors
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  title           :string(255)
#  experience      :string(255)
#  active          :boolean          default(TRUE)
#  doc_code        :string(255)
#  password_digest :string(255)
#  age             :string(255)
#  tag_line        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Doctor < ActiveRecord::Base

  has_secure_password

  validates_presence_of :password, :on => :create
  validates :doc_code, :uniqueness => true
  validates :tag_line, :title, :experience, :age, presence: true

  def professional_name
    "#{title.humanize} #{name}"
  end





end
