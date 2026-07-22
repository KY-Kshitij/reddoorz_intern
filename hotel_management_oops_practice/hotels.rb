class Hotel
  def initialize(hotel_name, location, price_per_night)
    @hotel_name = hotel_name
    @location = location
    @price_per_night = price_per_night
    
  end

  #check_in
  def Check_in(room_number,customer_name)
    puts "Checking in to room #{room_number} at #{@name}."
    #logic
  end
  
  #check_out
  def Check_out(room_number,customer_name)
    puts "Checking out of room #{room_number} at #{@name}."
    #logic
  end

  


end