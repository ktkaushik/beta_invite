module BetaInvite

  # The BetaInviteNotificationMailer sends an email to the admins configured in the BetaInvite initializer
  # The `from` and `to` emails has to be configured in the initializer.
  #
  # Do not forget to enter the mail configurations in your environments file.
  #
  class BetaInviteNotificationMailer < ActionMailer::Base
    
    # send the email with adequate info
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
  end
end
