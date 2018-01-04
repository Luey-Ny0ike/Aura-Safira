class ContactMailer < ApplicationMailer

  def new_contact(contact)
    @contact = contact

    mail(
      from: "#{@contact.email}",
      to: "nyoikelewis@gmail.com",
      subject: "#{@contact.subject}"
    )

  end
end
