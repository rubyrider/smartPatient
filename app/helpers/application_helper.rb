module ApplicationHelper

  def online_status(doctor)
    doctor.available_now?? 'online.png' : 'offline.png'
  end

  def ask_for_counseling(doctor)
    doctor.available_now?? "Counsel Now" : "Ask for Counseling"
  end

end
