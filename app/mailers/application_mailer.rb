class ApplicationMailer < ActionMailer::Base
  default from: "me@MYDOMAIN.com"
  layout 'mailer'
end
