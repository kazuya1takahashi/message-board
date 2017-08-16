Rails.application.configure do
  
 # default url
  config.action_mailer.default_url_options = {  host: 'localhost', port: 3000 }
  # mail setting
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :user_name => "hibridge1919.takahashi@gmail.com",
    :password => "hbtk1919",
    :authentication => :plain,
    :enable_starttls_auto => true
  }
end

