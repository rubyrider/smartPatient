class DoctorSessionsController < ApplicationController

  before_filter :config_open_tok, :authenticate_user!

  def new_session
    @invitation = Invitation.new
  end

  def create
    @doctor_session = DoctorSession.new(params[:doctor_session])
  end

  def live
    @invitation = Invitation.find(params[:i_id])
    @d_session = @invitation.doctor_session
    #if @d_session.is_valid
      @session_key = @d_session.session_key
      @session_token = @open_tok.generate_token :session_id => @d_session.session_key
    #else
    #  render text: 'The session is expired'
    #end
  end

  private
  def config_open_tok
    @open_tok = OpenTok::OpenTokSDK.new ENV['API_KEY'], ENV['API_SECRET']
  end
end
