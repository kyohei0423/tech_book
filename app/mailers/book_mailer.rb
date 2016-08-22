class BookMailer < ApplicationMailer
  default from: Settings.mailer[:email_address]

  def send_when_purchase(user, book)
    @user = user
    @book = book
    mail to: @user.email,
         subject: '購入ありがとうございます！'
  end
end
