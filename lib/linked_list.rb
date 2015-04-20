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


  def get(index)
    raise IndexError, "Index cannot be less than zero" if index < 0
    raise IndexError, "That index does not exist:if expand("%") == ""|browse confirm w|else|confirm w|endif" if !(0..@size).include?(index)

    if index == 0
      @first_item.payload
    else
      current_node = @first_item
      index.times do
        raise IndexError, "You've reached the end of the index." if current_node.nil? or current_node.last?
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


  def delete(index)
    raise IndexError, "The list does not include that index number" if !(0..@size).include?(index)

    if index == 0
      @first_item = @first_item.next_item
    else
      current_node = @first_item
      (index -1).times do
        current_node = current_node.next_item
      end
      current_node.next_item = current_node.next_item.next_item
    end
    @size -= 1
  end


  def [](index)
    get(index)
  end


  def []=(index, value)
    get(index).replace value
  end


  def index(value)
    index = 0
    current_node = @first_item
    until current_node.nil? || current_node.payload == value
      current_node = current_node.next_item
      index += 1
    end
    if @size <= index
      nil
    else
     index
    end
  end
  
end



