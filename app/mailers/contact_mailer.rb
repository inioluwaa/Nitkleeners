class ContactMailer < ApplicationMailer

  default from: user.email
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_mailer.subject
  #
  def contact_mailer
    mail to: 'inioluwaakinleye@gmail.com', subject: 'Contact Page'
  end
end
