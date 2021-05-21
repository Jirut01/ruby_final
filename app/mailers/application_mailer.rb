class ApplicationMailer < ActionMailer::Base
  default from: 'natapapon.r@gmail.com'
  
  layout 'mailer'
 
  def inquire(name_user, tel ,current_user,message)
    @name_user = name_user
    @tel  = tel 
    @message = message
    @email = current_user.email
    mail(to:@email,subject: 'Instagram')
  end
end