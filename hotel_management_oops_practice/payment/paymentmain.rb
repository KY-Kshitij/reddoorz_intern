require_relative "payment/payments"
require_relative "payment/paymentMethods"
require_relative "payment/paymentGateway/razorpay_gateway"
require_relative "payment/paymentGateway/stripe_gateway"
require_relative "payment/paymentGateway/paypal_gateway"

##example

# Select payment gateway
gateway = RazorpayGateway.new

# Select payment method
payment_methods = PaymentMethods.new

payment_methods.upi

# Create payment
payment = Payment.new(
  5000,
  payment_methods.payment_method,
  gateway
)

# Apply discounts
payment.discount_offers("Bank A", true)

# Process payment
payment.process_payment

# Check status
payment.payment_status

# Refund payment
payment.refund_payment

# Check status again
payment.payment_status