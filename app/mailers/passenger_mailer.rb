class PassengerMailer < ApplicationMailer
    default from: "rails@email.com"
    def booking_mail(passenger, flight, booking)
        @passenger = passenger
        @flight = flight
        @booking = booking
        mail(to: passenger[:email], subject: "subject")
        
    end

end
