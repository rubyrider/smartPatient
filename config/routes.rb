SmartPatient::Application.routes.draw do

  get "ajax/fetch_location"
  devise_for :users
  resources :doctors
  resources :invitations

  get "doctor_sessions/new_session", as: :new_doctors_session
  get "doctor_sessions/create"
  get "doctor_sessions/live", as: :live_session
  get "welcome/index"

  # You can have the root of your site routed with "root"
  root 'welcome#index'

end
