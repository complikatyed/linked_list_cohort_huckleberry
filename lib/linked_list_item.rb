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

  def <=>(anOther)
    self.payload <=> anOther.payload
    self.payload.to_s <=> anOther.payload.to_s
  end

  def ===(anOther)
    self.object_id === anOther.object_id
  end
end


