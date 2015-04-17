class LinkedListItem
  include Comparable
  attr_accessor :payload, :next_item

  def initialize(*data)
    @payload = data
  end

  def last?
    next_item.nil?  # Says 'look for the next item.  If there isn't one, you found the last item'
  end

  def next_item=(lli)
    raise ArgumentError, "can't next_item to self!" if self == lli
    @next_item = lli
  end
  
  # HERE'S HOW USING COMPARABLE WORKS:
  # self less than other    => -1
  # self equal to other     => 0
  # self greater than other => 1

  def <=>(other)
    if self.payload.class == other.payload.class  # Do the classes of the two payloads match?

      self.payload <=> other.payload  # Since they match, compare them to each other
                                      # Strings (alpha), Fixednum (number value), Symbol (alpha)

    else # if the two payload classes don't match
 
      self.payload.class.to_s <=> other.payload.class.to_s   # Convert the payload class to a string
                                                             # Compare them by alphabetical name
    end                                                      # class_precedence = [Fixnum, String, Symbol]
  end                                                        # Ed Dean is a freakin' genius!

  def ===(other)
    self.object_id === other.object_id  # Makes the '===' continue working, despite above <=> code
  end

end



