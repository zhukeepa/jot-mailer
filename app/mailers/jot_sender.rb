class JotSender < ActionMailer::Base
  layout 'mailer'
  default from: 'Jot Mailer'
  def textbox_email(recipient, subject, body)
    @message = body 
    mail(to: recipient, subject: subject)
  end
end