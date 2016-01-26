class Contact < ActiveRecord::Base
	include Foo

	validates :name, presence: true

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

    validates :message, presence: true
 
end
