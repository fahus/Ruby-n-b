require 'sendgrid-ruby'
include SendGrid

class Mail

  def self.send(to:, reservation_date:, guest_email:)
    from = Email.new(email: 'rubynb.maker@gmail.com')
    to = Email.new(email: to)
    subject = 'Someone has requested your listing'
    content = Content.new(type: 'text/plain', value: guest_email + ' has requested your property for ' + reservation_date)
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers

  end

end
