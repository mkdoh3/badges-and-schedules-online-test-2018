# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
end


## do anyone else have another way of doing this?
# def batch_badge_creator(names)
#     names.map{|name| badge_maker(name)}
# end

# def batch_badge_creator(names)
#     badges = []
#     names.each do |name|
#         badges << badge_maker(name)
#     end
#     badges
# end

## woof! lol
# def batch_badge_creator(names)
#     badges = []
#     counter = 0
#     while counter < names.size
#         badges << badge_maker(names[counter])
#         counter += 1
#     end
#     badges
# end

## collect is an alias for map! 
## the map method is found in many function and OO programming languages
## collect was added as a nob to the smalltalk OO prog. lang. first released in 1972
def batch_badge_creator(names)
    names.collect{|name| badge_maker(name)}
end

## TODO ## 
## find more ways to code this guy
def assign_rooms(guests)
    guests.map{|guest| "Hello, #{guest}! You'll be assigned to room #{guests.index(guest) + 1}!"}
end

## TODO ## 
## find more ways to code this guy
def printer(guests)
    batch_badge_creator(guests).map{|greeting| puts greeting}
    assign_rooms(guests).map{|room_assignment| puts room_assignment}
end