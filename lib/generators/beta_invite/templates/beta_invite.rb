# 
# Setup your BetaInvite engine in easy steps using this config initializer
# 

BetaInviteSetup.setup do |config|
  # Setting this to true would send an email to the admins saying that a
  # particular user with a particular email address has requested for an invite
  config.send_email_to_admins = false

  # If you have set the above option as true then you should add the email addresses
  # of the admins who should receive a notification about the user having requested
  # for an invite in a comma separated value.
  config.admin_emails = 'email_1@example.org, email_2@example.org'

  # Configure your mail configuration in the environments file and enter the from email
  # to send emails
  config.from_email = 'from@email.com'

  # Send thank you emails to the user who has requested for an invite
  # False by default
  config.send_thank_you_email = false

  # This regex would be used to validate the email addresses in the beta_invite model
  # You can customize it your needs. Do not add this in string quotes. Pure Regex
  config.email_validation_regex = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

end