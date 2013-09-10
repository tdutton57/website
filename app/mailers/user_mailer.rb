class UserMailer < ActionMailer::Base
  def registration_confirmation(user) 
  	@user = user
  	attachments["Dutton Tiffani Resume.pdf"] = File.read("#{Rails.root}/public/files/Dutton\ Tiffani\ Resume.pdf")  
    mail(:to => user.email, :subject => "Tiffani Dutton Resume", :from => "tiffani.dutton@gmail.com")  
  end
end
