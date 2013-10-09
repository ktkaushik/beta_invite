BetaInviteSetup.setup do |config|
  # Setting this to true would send an email to the admins saying that a
  # particular user with a particular email address has requested for an invite
  config.send_email_to_admins = false

  # If you have set the above option as true then you should add the email addresses
  # of the admins who should receive a notification about the user having requested
  # for an invite in an array.
  config.admin_emails = []

  # Configure your mail configuration in the environments file and enter the from email
  # to send emails
  config.from_email = 'from@email.com'
end