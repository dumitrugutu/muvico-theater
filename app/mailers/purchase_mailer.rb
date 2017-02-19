class PurchaseMailer < ApplicationMailer
  def notify_customer(purchase)
    @purchase = purchase
    mail(to: @purchase.email, subject: "From Muvico Theater")
  end
end
