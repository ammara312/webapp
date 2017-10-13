class UserMailer < ApplicationMailer
  default from: "foodie@live.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
   		to: 'sazkam@hotmail.com',
   		subject: "A new contact form message from #{name}")
  end
end
