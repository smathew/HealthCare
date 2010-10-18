# == Schema Information
# Schema version: 20101018144602
#
# Table name: contacts
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  comments   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Contact < ActiveRecord::Base
	validates_presence_of :name, :email, :comments
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email, :with => EmailRegex, :if => "!email.blank?"
	
	validates_length_of :comments, :maximum=> 254, :message => " cannot be more than 250 characters"
end
