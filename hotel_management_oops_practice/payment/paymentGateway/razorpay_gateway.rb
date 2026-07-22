require_relative "payment_gateway"

class RazorpayGateway < PaymentGateway
  def process(amount, payment_method)
    puts "Processing ₹#{amount} through Razorpay using #{payment_method}."

    # Simulating successful payment
    true
  end

  def refund(amount)
    puts "Refunding ₹#{amount} through Razorpay."

    # Simulating successful refund
    true
  end
end