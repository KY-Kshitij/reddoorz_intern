class Payment
  attr_reader :amount, :payment_method

  def initialize(amount, payment_method, gateway)
    @amount = amount
    @payment_method = payment_method
    @gateway = gateway
    @payment_done = false
  end

  def discount_offers(bank = nil, new_user = false)
    puts "Checking available discounts..."

    case bank
    when "Bank A"
      @amount += @amount * 0.05
      puts "5% Bank A discount applied."

    when "Bank B"
      @amount += @amount * 0.07
      puts "7% Bank B discount applied."

    when "Bank C"
      @amount += @amount * 0.10
      puts "10% Bank C discount applied."

    else
      puts "No bank discount available."
    end

    if new_user
      @amount -= @amount * 0.10
      puts "10% new user discount applied."
    end

    if @amount > 500
      @amount -= @amount * 0.15
      puts "15% discount for booking over $500 applied."
    end
  end

  def process_payment(total_price, payment_method)
    puts "Starting payment..."
    puts "Choose a payment gateway:"
    puts "1. Razorpay" #url: https://razorpay.com/
    puts "2. Stripe"   #url: https://stripe.com/
    puts "3. PayPal"   #url: https://www.paypal.com/

    #@process_amount(@total_price, payment_method)
    @payment_done = @gateway.process(
      @total_price,
      @payment_method
    )

    if @payment_done
      puts "Payment successful."
    else
      puts "Payment failed."
    end
  end

  def payment_status
    if payment_done
      puts "Payment of ₹#{@amount} has been successfully processed."
    else
      puts "Payment failed."
    end
  end

  def refund_payment
    if payment_done
      refund_successful = @gateway.refund(@total_price)

      if refund_successful
        @payment_done = false
        puts "Refund successful."
      else
        puts "Refund failed."
      end
    else
      puts "Cannot refund payment."
    end
  end

  private

  def payment_done
    puts "verify from payment gateway"
  end
end