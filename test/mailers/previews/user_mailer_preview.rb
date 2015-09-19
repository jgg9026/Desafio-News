# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def notify
    UserMailer.notify User.all.sample, New.all.sample
  end
end
