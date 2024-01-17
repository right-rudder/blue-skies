class EnrollmentMailer < ApplicationMailer

  default from: 'no-reply@flyblueskiesabove.com'

  def enrollment_email(message)
    @message = message

    if Rails.env.production?
      mail(to: @message.email, bcc: ["no-reply@flyblueskiesabove.com", "connect@flytheblueskies.com"], reply_to: "connect@flytheblueskies.com", subject: "✈️ Application to Enroll at Blue Skies Above")
    else
      mail(to: @message.email, bcc: ["no-reply@flyblueskiesabove.com"], reply_to: "connect@flytheblueskies.com", subject: "✈️ Application to Enroll at Blue Skies Above")
    end
  end


end
