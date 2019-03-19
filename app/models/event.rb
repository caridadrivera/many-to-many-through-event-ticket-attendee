class Event
  attr_accessor :event

  @@all = []

  def initialize(name, total_cost, ticket_price)
    @name = name
    @total_cost = total_cost
    @ticket_price = ticket_price

    @@all << self
  end

def self.all
  @@all
end

def sell_to_break_even
end

def tickets
  Ticket.all.select do |ticket|
    ticket.event == self
  end
end

def attendees
  self.tickets.map do |ticket|
    ticket.attendee
  end
end

def average_age
   attendees.inject(0) do |sum, attendees| sum + attendee.age
   / attendees.length
 end
end

end

# Event.all
  # Returns an array of all Events
# Event#sales_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0.
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
