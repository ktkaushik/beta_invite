# Beta Invite setup module

module BetaInviteSetup

  mattr_accessor :from_email
  mattr_accessor :admin_emails
  mattr_accessor :send_email_to_admins
  mattr_accessor :send_thank_you_email

  def self.setup
    yield self
  end

end
