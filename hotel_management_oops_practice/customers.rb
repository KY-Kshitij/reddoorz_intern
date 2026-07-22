require_relative "booking"
#require_relative "payment"

class Customer

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email 
    #@number_of_peoples = number_of_peoples
  end
  @bookings_details = {}
  def search_hotel(hotel_name, date, *city, number_of_people)
    
  end

  def book_room(hotel_name, start_date, end_date,number_of_people)
    #@bookings << Booking.new(self,room,@date,hotel)
    Booking.new.booking()
    puts "Room #{@room_number} has been booked at #{hotel.name} for #{@name} from #{@start_date} to #{@end_date}."
  end

  def payment_status
    @payment.payment_status
  end

  private
  def booking_details
    @bookings_details.values
  end
=begin
  def search_room(hotel, room_number)
    room = hotel.rooms.find { |r| r.number == room_number }
    if room
      puts "Room #{room_number} is available at #{hotel.name}."
    else
      puts "Room #{room_number} is not available at #{hotel.name}."
    end
=end

end