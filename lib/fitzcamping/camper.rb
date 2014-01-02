module Fitzcamping
  class Camper
    class << self
      def say(message)
        campfire = Tinder::Campfire.new ENV['CAMPFIRE_SITE'], :token => ENV['CAMPFIRE_TOKEN']
        room = campfire.find_room_by_name ENV['CAMPFIRE_ROOM']
        room.speak message
        puts "Sent #{message} to #{room.name}"
      end
    end
  end
end
