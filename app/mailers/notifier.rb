class Notifier < ActionMailer::Base
  default from: "Emblem Embroiders <info@emblemembroiders.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.quote_received.subject
  #
  def quote_received(quote)
    @quote = quote

    mail to: quote.email, :subject => "Your Quote Received"
  end
  
  def quote_notification
    mail to: "numan.ilyas@gmail.com", :subject => "New Quote Received"
  end
end
