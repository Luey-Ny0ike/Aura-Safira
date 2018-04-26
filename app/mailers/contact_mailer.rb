class ContactMailer < ApplicationMailer

  default from: 'no-reply@aurasafira.com'
  def new_contact(contact)
    @contact = contact


    mail(
      to: "nyoikelewis@gmail.com",
      from: "#{@contact.email}",
      subject: "#{@contact.subject}"
    )

  end
end
