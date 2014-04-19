module ApplicationHelper

  def online_status(doctor)
    doctor.available_now?? 'online.png' : 'offline.png'
  end

  def ask_for_counseling(doctor)
    doctor.available_now?? "Counsel Now" : "Ask for Counseling"
  end

  def counseling_btn(doctor)
    doctor.available_now?? "btn-primary" : "btn-warning"
  end

  def broadcast(channel, &block)
    message = {:channel => channel, :data => capture(&block), :ext => {:auth_token => FAYE_TOKEN}}
    uri = URI.parse("http://localhost:9292/faye")
    Net::HTTP.post_form(uri, :message => message.to_json)
  end

end
