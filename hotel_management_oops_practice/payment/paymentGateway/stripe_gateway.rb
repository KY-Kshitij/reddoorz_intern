require_relative "payment_gateway"

class StripeGateway < PaymentGateway
  def process(amount, payment_method)
    puts "Processing ₹#{amount} through Stripe using #{payment_method}."

    # Simulating successful payment
    true
  end

  def refund(amount)
    puts "Refunding ₹#{amount} through Stripe."

    # Simulating successful refund
    true
  end
end