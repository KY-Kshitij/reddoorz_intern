class PaymentGateway < PaymentMethods

  def initialize
    super
  end

  def process(total_price, payment_method)
    raise NotImplementedError, "Subclasses must implement process"
  end

  def refund(total_price)
    raise NotImplementedError, "Subclasses must implement refund"
  end

end