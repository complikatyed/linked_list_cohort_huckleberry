require_relative 'linked_list_item'


class LinkedList
  attr_accessor :payload, :next_item, :size, :ll
  def initialize(*payload)
    @size = 0

    payload.each do |payload|
      push(payload)
    end
  end

  def push(payload)
    new_item = LinkedListItem.new(payload)
    if @first_item.nil?
      @first_item = new_item
    else
      @last_item.next_item = new_item
    end
    @size += 1
    @last_item = new_item
  end

  def delete(index)

    if index == 0
      @first_item = @first_item.next_item  # This is passing test_13c_ (remove first item)
    else
      puts "Sorry"
    end
    @size -= 1  # And passing test_13a (delete changes size)
  end

  def get(index)
    # index number can't be less than zero, so IndexError gets raised
    raise IndexError, "Sorry, Charlie." if index < 0

    # if the index number given is not in the range of the index...
    raise IndexError, "Nope." if !(0..@size).include?(index)

    if index == 0
      @first_item.payload
    else
      current_node = @first_item
      index.times do
        raise IndexError, "Ooops" if current_node.nil? or current_node.last?
        current_node = current_node.next_item
      end
      current_node.payload
    end
  end






  def last
    unless @last_item.nil?
      @last_item.payload
    end
  end

  def [](index)
    get(index)
  end

  def []=(index, object)
    get(index).replace object
  end

  def to_s
    str = "| "
    current_node = @first_item
    until current_node.nil?
      str << current_node.payload
      punctuation = current_node.last?  ? " " : ", "
      str << punctuation
      current_node = current_node.next_item
    end
    str << "|"
    str
  end

end



