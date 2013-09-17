module BetaInvite
  class BetaInvite < ActiveRecord::Base
    attr_accessible :email, :token
  end
end
