require_dependency "beta_invite/application_controller"

module BetaInvite
  class BetaInvitesController < ApplicationController

    def new
      @beta_invite = BetaInvite.new
    end

    # Save the email and a randomly generated token
    def create
      email = params[:beta_invite][:email]
      beta_invite = BetaInvite.new( email: email, token: SecureRandom.hex(10) )

      if beta_invite.save
        flash[:success] = "#{email} has been registered for beta invite"

        # send an email if configured
        if BetaInviteSetup.send_email_to_admins
          BetaInvite::BetaInviteNotificationMailer.notify_admins( BetaInviteSetup.from_email,  BetaInviteSetup.admin_emails, email, BetaInvite.count ).deliver
        end

        if BetaInviteSetup.send_thank_you_email
          BetaInvite::BetaInviteNotificationMailer.thank_user( BetaInviteSetup.from_email, email ).deliver
        end
        redirect_to beta_invites_path
      else
        flash[:alert] = beta_invite.errors.full_messages
        redirect_to new_beta_invite_path
      end
    end

    def index
      @beta_invites = BetaInvite.all
    end

    def show

    end
  end
end
