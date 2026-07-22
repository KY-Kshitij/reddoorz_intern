require_relative "module/kernel_module"
require_relative "room"
require_relative "hotels"
require_relative "booking"
require_relative "customers"

require_relative "payment/payments"
require_relative "payment/paymentMethods"

require_relative "payment/paymentGateway/payment_gateway"
require_relative "payment/paymentGateway/paypal_gateway"
require_relative "payment/paymentGateway/razorpay_gateway"
require_relative "payment/paymentGateway/stripe_gateway"

puts "Starting Hotel Booking System..."

customer = Customer.new(
  "Kshitij",
  22,
  "kshitij@example.com"
)

puts "Customer created successfully."

room = Room.new(
  101,
  "Deluxe",
  5000,
  bookings={}
)

puts "Room created successfully."

puts "Room available?"
puts room.is_available?