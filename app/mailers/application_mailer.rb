class ApplicationMailer < ActionMailer::Base
  default from: Settings.mailer[:email_address]
  layout 'mailer'
end
