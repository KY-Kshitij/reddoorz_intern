require 'securerandom'
require_relative "room"

class Booking
  attr_reader :guest, :room, :start_date, :end_date, :booking_id, :room_assigned
  def initialize(guest, room, start_date, end_date)
    @guest = guest
    @room = room
    @start_date = start_date
    @end_date = end_date
    @bookings = {
      room_number:nil,
      customer_id:nil,
      start_date:nil,
      end_date:nil
    }
  end

  #reservation
  def room_reserve(room_number, customer_id, start_date, end_date)
    return false unless is_available?(start_date, end_date)

    @bookings << {
      room_number: room_number,
      customer_id: customer_id,
      start_date: start_date,
      end_date: end_date
    }
    puts "Room #{room_number} has been reserved for customer #{customer_id} from #{start_date} to #{end_date}."
    true
  end

  #booking
  def booking() 
    puts "checking if room is available on #{@date}.."
    
    if @room.is_available?(start_date, end_date)
      
      # Lock room for the guest and generate a booking ID
      #Room Reserve Logic
      
      @room.room_reserve(@guest, start_date, end_date)
      @bookings << @booking_id = SecureRandom.uuid
      
    else
      puts "Sorry, no room is available on #{@date}."
    end
  end

  #cancel
  def cancel_booking
    if has_booking_id
      
      #@booking_id = nil
      #logic to delete

      @booking.delete(@booking_id)
      puts "Booking for #{@guest} in room #{@room} on #{@date} has been canceled."
    else
      puts "No booking found to cancel."
    end
  end

  def booking_details
    puts "Booking Details:"
    puts "Guest: #{@guest}"
    puts "Room: #{@room}"
    puts "Date: #{@date}"
  end

  def booking_status
    if @booking_id
      puts "Booking status for #{@guest} in room #{@room} on #{@date}: Confirmed."
    else 
      puts "No booking found"   
    end
  end

  
end