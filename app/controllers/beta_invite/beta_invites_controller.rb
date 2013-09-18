require_dependency "beta_invite/application_controller"

module BetaInvite
  class BetaInvitesController < ApplicationController

    def new
      # 
      # TODO
      # is it necessary to initialize the BetaInvite model ?
      # Create a form_tag ?
      # 

      @beta_invite = BetaInvite.new
    end

    def create
    end
  end
end
