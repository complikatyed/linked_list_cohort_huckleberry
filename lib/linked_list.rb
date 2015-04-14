class LinkedList

  # So very first of all, we create the list itself, presumably with nothing in it, so 'nil' maybe?
  # I like the (*data) option with differing variables, but I'm not sure that's right...
  #
  # Then the first thing that goes in is the first LinkedListItem?
  #
  # If that's the case, wouldn't the "push" method actually involve creating a new Linked_List_Item?
  #
  # Wondering if the whole LinkedListItem class definition needs to go right here?
  # That way when a new item is created, it's coming from inside here...
  #
  # Because shouldn't all of the things that are getting pushed up into the
  # new linked_list BE linked_list_items?
  #
  #

  class LinkedListItem
    include Comparable
    attr_reader :payload
    attr_reader :next_item

    def initialize(data)
      @payload = data
    end

    def last?
      next_item.nil?  # Says 'look for the next item.  If there isn't one, you found the last item'
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
  

  # NEED TO REFACTOR THIS SECTION SO THE PUSH METHOD ACTUALLY CREATES A NEW LLI...

  attr_accessor :payload, :first_item, :index, :value

  def initialize(*data)
    @payload = data
  end

  def push(value)
    @payload = value
  end

#  def index(value)
    #@first_item = index(value)
  #end

  def get(first_item)
    @first_item = index(value)
  end





 end




