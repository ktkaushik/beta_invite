module BetaInvite
  class BetaInvite < ActiveRecord::Base
    attr_accessible :email, :token
    
    validates_presence_of :email    
    validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  end
end