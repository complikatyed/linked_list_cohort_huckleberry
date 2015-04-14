class LinkedListItem
  include Comparable
  attr_accessor :payload, :item, :next_item

  def initialize(data)
    @payload = data
  end

  def intialize(next_item)
    @next_item = next_item
  end

end

# test_00a_triple_equals & test_01_item_stores_payload
lli = LinkedListItem.new("foo")

# test_01b_item_stores_payload
lli = LinkedListItem.new("bar")

# test_01_item_stores_payload
lli1 = LinkedListItem.new("foo")
lli2 = LinkedListItem.new("bar")

# test_02a_add_next_item 
# (Took out the "=nil" on the next_item initialization and changed to attr_accessor)
lli1.next_item = lli2

