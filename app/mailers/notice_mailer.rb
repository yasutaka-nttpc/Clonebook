class NoticeMailer < ApplicationMailer
  def sendmail_topic(topic)
    @topic = topic

    mail to: "0000suteaka@gmail.com",
    subject: '【Clonebook】トピックが投稿されました'
  end
end