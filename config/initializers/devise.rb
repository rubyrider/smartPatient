Devise.setup do |config|
 # config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.stretches = Rails.env.test? ? 1 : 10
#  config.pepper = '1e4726318c27b0fe17494340fcc609e7627e91069b27b1b08d1acf30c14a76ac607dccb76bd1cf9e3bd966c31136206a4412d0fc988ad009dacd198d6bb2ccf1'
#  config.reconfirmable = true
  config.password_length = 4..128
  config.reset_password_within = 6.hours
  config.scoped_views = true
  config.default_scope = :users
  config.sign_out_via = :delete
end
