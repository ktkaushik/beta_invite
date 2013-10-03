require_dependency "beta_invite/application_controller"

module BetaInvite
  class BetaInvitesController < ApplicationController

    def new
      @beta_invite = BetaInvite.new
    end

    # Save the email and a randomly generated token
    def create
      beta_invite = BetaInvite.new( email: params[:beta_invite][:email], token: SecureRandom.hex(10) )
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