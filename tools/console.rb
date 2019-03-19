require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Example of a variable definition that will be available in your Pry session once you've built out the model:

lucy = Attendee.new("Lucy", 22)
tim = Attendee.new("Tim", 26)
cari = Attendee.new("Cari", 20)
lori = Attendee.new("Lori", 22)

event1 = Event.new("event1", 5000, 500)
event2 = Event.new("event2", 200, 500)
event3 = Event.new("event3", 300, 100)

ticket1 = Ticket.new(event1, lucy)
ticket2 = Ticket.new(event1, cari)
ticket3 = Ticket.new(event2, lori)
ticket4 = Ticket.new(event3, cari)



#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
