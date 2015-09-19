class News < ActiveRecord::Base
  after_create :send_notify

  def send_notify
   NotifyUserJob.set(wait: 10.seconds).perform_later(self.id)
    #NotifyUserJob.set(wait: 5.minutes).perform_later(self.id)
    #NotifyUserJob.perform_now(self.id)
  end
end
