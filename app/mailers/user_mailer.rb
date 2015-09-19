class UserMailer < ApplicationMailer
  def notify(user_id, new_id)
    @new=News.find(new_id)
    @user=User.find(user_id)
    mail(to: @user.email, subject: "Nuevo Articulo: "+"#{@new.title}")
  end

end
