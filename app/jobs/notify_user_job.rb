class NotifyUserJob < ActiveJob::Base
  queue_as :default

  def perform(article_id)
    # Do something later
    @user=User.all
    @user.each do |user|
      UserMailer.notify(user.id, article_id).deliver
    end
    #UserMailer.notify(@user, article_id).deliver
  end
end
