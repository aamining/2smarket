class ModelMailer < ApplicationMailer

# default from: "aamining@gmail.com.com"

 def sample_email()
    # @user = user
    mg_client = Mailgun::Client.new ENV['api_key']
    message_params = {:from    => ENV['gmail_username'],
                      :to      => current_user.email,
                      :subject => 'Sample Mail using Mailgun API',
                      :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    mg_client.send_message ENV['domain'], message_params
  end

 # def new_record_notification(record)
 #   @record = record
 #   mail to: "recipient@MYDOMAIN.com", subject: "Success! You did it."
 # end
end
