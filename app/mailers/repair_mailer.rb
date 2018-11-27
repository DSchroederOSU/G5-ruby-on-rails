class RepairMailer < ApplicationMailer

  def success_mail(user)
    @user = user
    mail(:to => @user.email,
     :subject => "Welcome to ...",
     :template_name => 'success_mail')
  end

end
