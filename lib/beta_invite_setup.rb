# Beta Invite setup module

module BetaInviteSetup

  mattr_accessor :send_email_to_admins
  mattr_accessor :admin_emails

  def self.setup
    yield self
  end

end
