# Beta Invite setup module

module BetaInviteSetup

  mattr_accessor :from_email
  mattr_accessor :admin_emails
  mattr_accessor :send_email_to_admins

  def self.setup
    yield self
  end

end
