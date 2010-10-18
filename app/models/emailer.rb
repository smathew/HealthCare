class Emailer < ActionMailer::Base
	def contact_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "info@excelfcu.orgtcreel@hsfcu1.org, krumsley@hsfcu1.org, Shonari.hale@hsfcu1.org, mbailey@shareone.com"
	from        "web_services@shareone.com"
	subject     "HSFCU Contact from Website"
	
	body :app => app
  end
end
