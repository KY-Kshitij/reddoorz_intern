class PaymentMethods
  attr_reader :payment_method

  def initialize
    @payment_method = nil
  end

  def upi
    puts "Available UPI methods:"
    puts "Google Pay"
    puts "PhonePe"
    puts "Paytm"

    @payment_method = "UPI"
  end

  def card
    puts "Available card methods:"
    puts "Visa"
    puts "Mastercard"
    puts "American Express"

    @payment_method = "Card"
  end
end