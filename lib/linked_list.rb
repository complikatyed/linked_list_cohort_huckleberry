class LinkedListItem
  include Comparable
    attr_reader :payload
    attr_reader :next_item

   def initialize(data)
     @payload = data
   end

   def last?
     next_item.nil?
   end

   def next_item=(lli)
     raise ArgumentError, "can't next_item to self!" if self == lli
     @next_item = lli
   end

   def <=>(other)
     if self.payload.class == other.payload.class
       self.payload <=> other.payload
     else
       self.payload.class.to_s <=> other.payload.class.to_s
     end
   end

   def ===(other)
     self.object_id === other.object_id
   end
end

class LinkedList
  attr_accessor :payload, :first_item, :list, :value, :index, :push, :new

  def initialize(data=nil)
    @payload = data
  end

  def push(payload)
    if self.payload == nil
      @first_item = LinkedListItem.new(payload)
    else
      puts "oranges"  # This is eventually going to be where @next_item goes
    end
  end
end
