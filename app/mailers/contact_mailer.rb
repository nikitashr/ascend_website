class ContactMailer < ActionMailer::Base
  default from: "infotech.ascend@gmail.com"

  def welcome_email(contact)
    @contact = contact
    @url  = 'http://ascend.com.np/contacts/new'
    mail(:to => contact.email, :subject => 'Welcome to Ascend Infotech')
  end
end
