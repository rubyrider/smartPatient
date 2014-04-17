class WelcomeController < ApplicationController
  def index
    search = params[:q]
    case search.nil?
      when true
        @doctors = Doctor.all
      when false
        @doctors = Doctor.where("tag_line LIKE ? OR title LIKE ? OR age LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    end
  end
end
