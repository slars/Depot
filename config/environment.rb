# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

# Initialize email capability
Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address:	    "smtp.gmail.com",
    port:	    587,
    domain:	    "slarsen.net",
    authentication: "plain",
    user_name:	    "bubbasteve",
    password:	    "Gam3pl@n",
    enable_starttls_auto: true
  }
end
