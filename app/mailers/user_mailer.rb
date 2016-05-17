class UserMailer < ApplicationMailer
	default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'stapleton.dp@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
  @appname = "Binje"
  mail( :to => user.email,
        :subject => "#{user.first_name} Hello and Welcome to #{@appname}!")
	end

end
