class UserMailer < ApplicationMailer
  def accepted
    @user = params[:user]
    mail(to: @user.email, subject: 'Your trade has been accepted')
  end

  def denied
    @user = params[:user]
    mail(to: @user.email, subject: 'Your trade has been denied')
  end
end
