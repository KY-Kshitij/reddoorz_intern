require_relative "payment_gateway"

class PaypalGateway < PaymentGateway
  def process(amount, payment_method)
    puts "Processing ₹#{amount} through PayPal using #{payment_method}."

    # Simulating successful payment
    true
  end

  def refund(amount)
    puts "Refunding ₹#{amount} through PayPal."

    # Simulating successful refund
    true
  end
end