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
