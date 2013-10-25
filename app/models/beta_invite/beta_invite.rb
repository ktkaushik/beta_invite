module BetaInvite
  class BetaInvite < ActiveRecord::Base
    attr_accessible :email, :token
  
    # validating email with presence, uniqueness and format 
    validates :email, presence: true, uniqueness: true, format: { with: BetaInviteSetup.email_validation_regex }
  end
end