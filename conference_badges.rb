def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each do |name|
    badges << badge_maker(name)
  end
  badges
end

def batch_badge_creator(attendees)
  attendees.collect do |attendee| 
    badge_maker(attendee)
  end
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index do |name, index|
    room_assignments << "#{index + 1}. #{name}" 
  end
room_assignments
end

