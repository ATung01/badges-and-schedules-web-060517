def badge_maker(name)
  phrase = "Hello, my name is #{name}."
  # Write your code here.
end

def batch_badge_creator(names)
  messages = []
  names.each do |x|
    messages << badge_maker(x)
  end
  messages
end

def assign_rooms(speakers)
  rooms = (1..7).to_a
  assigned_room = []
  speakers.each do |x|
    assigned_room << "Hello, #{x}! You'll be assigned to room #{rooms.shift}!"
  end
  assigned_room
end

def printer(attendees)
  speakers = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)
  speakers.each_with_index do |el, ind|
    puts el.chomp
    puts rooms[ind]
  end


end
