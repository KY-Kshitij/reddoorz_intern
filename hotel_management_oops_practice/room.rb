require 'date'

class Room
  attr_reader :room_number, :room_type, :price_per_night, :room, :total_price, :bookings,:days

  def initialize(room_number, room_type, price_per_night)
    @room_number = room_number
    @room_type = room_type
    @price_per_night = price_per_night
    @rooms = [
    {
      room_number: 101,
      room_type: "Deluxe",
      price_per_night: 5000,
      bookings: []
    },
    {
      room_number: 102,
      room_type: "Suite",
      price_per_night: 8000,
      bookings: []
    }
    ]
    
  end
   


  def is_available?(start_date, end_date)
    @bookings.none? do |booking|
      dates_overlap?(
        start_date,
        end_date,
        booking[:start_date],
        booking[:end_date]
      )
    end
     puts "room  not available"
     false
   
  end

  def release(customer_id, start_date, end_date)
    booking = @bookings.find do |booking|
      booking[:customer_id] == customer_id &&
      booking[:start_date] == start_date &&
      booking[:end_date] == end_date
    end
    
    return false unless booking

    @bookings.delete(booking)
    puts "bookings deleted"
    true
  end

  def dates_overlap?(start_date1, end_date1, start_date2, end_date2)
    start_date1 <= end_date2 && start_date2 <= end_date1
  end

  def total_price(hotel_name,price_per_night,days)
    puts "price for #{hotel_name} for #{days} days is #{price_per_night * days}"
    @total_price = @price_per_night * @days
  end

end