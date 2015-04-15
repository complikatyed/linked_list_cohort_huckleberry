class LinkedListItem
  include Comparable
    attr_reader :payload
    attr_reader :next_item

#   def initialize(data)
     #@payload = data
   #end

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
  attr_accessor :payload, :first_item, :item, :ll, :list, :value, :index, :push, :new, :get, :next_item

  def initialize
    ll = LinkedList.new
  end

  def initialize(data=nil)
    @payload = data
  end

  def push(payload)
    if self.payload == nil
      @first_item = LinkedListItem.new(payload)
    else
      @first_item = LinkedListItem.new(payload)
    end
  end

  def get(value)
    @value = first_item.payload  # I know this isn't right, but I am stumped!
  end                            # Not sure if it's the way I've set up first_item
                                 # but I just cannot get the index to work.
                                 # SERIOUS RED CARD TIME!
end
