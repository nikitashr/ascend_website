class Contact < MailForm::Base
	attribute :name,		:validate => true
	attribute :email,		:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message,		:validate => true
	attribute :nickname,	:captcha => true
	attribute :company
	attribute :company_website

	def headers 
		{
			:subject => "Contact Form",
			:to => "info@ascend.com.np",
			:from => %("#{name}" <#{email}>)
		}
	end
end

