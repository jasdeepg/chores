class UserMailer < ActionMailer::Base
  default from: "jasdeepsgarcha@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end

  def new_chore(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "New things to clean")
  end
end
