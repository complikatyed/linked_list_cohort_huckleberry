class LinkedListItem
  include Comparable
  attr_reader :payload
  attr_writer :next_item

  def initialize(data)
    @payload = data
  end

  def intialize(next_item=nil)
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

lli1.next_item = lli2

