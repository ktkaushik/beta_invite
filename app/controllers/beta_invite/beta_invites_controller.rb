require_dependency "beta_invite/application_controller"

module BetaInvite
  class BetaInvitesController < ApplicationController

    def new
      @beta_invite = BetaInvite.new
    end

    def create
      email = params[:beta_invite][:email]
      beta_invite = BetaInvite.new
      beta_invite.email = email
      beta_invite.token = SecureRandom.hex(10) #generate a random hex token for all the users
      if beta_invite.save
        flash[:success] = "#{email} has been registered for beta invite"
        redirect_to beta_invites_path
      else
        flash[:alert] = beta_invite.errors.full_messages
        redirect_to new_beta_invite_path
      end
    end
  end
end
