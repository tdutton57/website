class UserMailer < ActionMailer::Base
  def registration_confirmation(user) 
  	@user = user
  	attachments["Resume.pdf"] = File.read("#{Rails.root}/public/files/Resume.pdf")  
    mail(:to => user.email, :subject => "Resume", :from => "tiffani.dutton@gmail.com")  
  end
end
