class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  attribute :message, validate: true
  attribute :nickname, captcha: true
  def headers
    {
      subject: 'Contact Form',
      to: 'test@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
