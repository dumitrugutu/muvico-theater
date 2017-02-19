# Preview all emails at http://localhost:3000/rails/mailers/purchase_mailer
class PurchaseMailerPreview < ActionMailer::Preview
  def notify_customer
    purchase = Purchase.last
    PurchaseMailer.notify_customer(purchase)
  end
end
