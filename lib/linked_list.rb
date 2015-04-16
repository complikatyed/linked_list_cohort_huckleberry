require_relative 'linked_list_item'
  
class LinkedList
  attr_accessor :first_item, :size, :last_item

  def initialize
    @size = 0
    @first_item = nil
    @last_item = nil
  end

  def push(payload)
    if @first_item.nil?
      @first_item = LinkedListItem.new(payload)
      @last_item = @first_item
      @size += 1
    else
      @last_item.next_item = LinkedListItem.new(payload)
      @last_item = @last_item.next_item
      @size += 1
    end
  end

  def get(index)
    # index number can't be less than zero, so IndexError gets raised
    raise IndexError, "Sorry, Charlie." if index < 0

    # if the index number given is not in the range of the index...
    raise IndexError, "Nope." if !(0..@size).include?(index)

    if index == 0
      @first_item.payload
    else
      current_item = @first_item
      counter = index

      counter.times do # index number of times get the next_item.payload
        # get the next item -- starting at first_item
       current_item = current_item.next_item
      end

    current_item.payload
    end
  end

  def last
    if @last_item.nil?
      @last_item
    else
      @last_item.payload
    end
  end

  def to_s  # when 'll.to_s' is called, do these things:
    if @size === 0  # If there aren't any items in the list
      "| |"       # return the thing the test wants.
    elsif @size === 1
      current_item = @first_item
      "| #{@first_item.payload} |"
    else
      string = ""

      (@size -1).times do |i|
        string << "#{get(i)}, "
      end
      string << "#{@last_item.payload}"
      "| #{string} |"
    end
  end

end



