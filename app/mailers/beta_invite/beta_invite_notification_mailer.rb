module BetaInvite

  # The BetaInviteNotificationMailer sends notification emails to users and admins
  # The `from` and `to` emails has to be configured in the initializer.
  #
  # Do not forget to enter the mail configurations in your environments file.
  #
  class BetaInviteNotificationMailer < ActionMailer::Base
    
    # send the email with adequate info
    # TODO: Subject in locales
    def notify_admins( from_email, to_email, beta_invite_email, count )

      @email = beta_invite_email
      @count = count
      subject = "#{@email} has registered for your app"
      mail(
          to: to_email,
          from: from_email,
          subject: subject
        )
    end

    # Send an email to the user as a thank you
    # TODO: Subject in locales
    def thank_user( from_email, to_email )
      subject = "Thank you for requesting an invite"
      mail(
          to: to_email,
          from: from_email,
          subject: subject
        )
    end
  end
end
