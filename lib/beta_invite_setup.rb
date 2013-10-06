# Beta Invite setup module

module BetaInviteSetup

  mattr_accessor :something

  def self.setup
    yield self
  end

end
