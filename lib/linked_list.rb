require_relative 'linked_list_item'

class LinkedList
  attr_accessor :first_item, :size, :last_item, :value, :payload, :next_item
 
  def new_item 
    new_item = LinkedListItem.new(payload)
  end

  def initialize(*payload)

    # Do I need some kind of if statement here?
    @first_item = new_item
    @last_item = @first_item
    @size = 0

    payload.each do |i|
      last_item = @first_item
      until last_item.last?
           last_item = @last_item.next_item
      end
      last_item.next_item = new_item
      @size += 1
    end
  end

  def push(payload)
    @payload = payload
        
    if @first_item.payload = []
      @first_item.payload = self.payload
       # @last_item = @first_item
    else
      @last_item.next_item = new_item
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

  def to_s
    if @size === 0 && self.payload == []
      "| #{nil.to_s}|"

    elsif @size === 0 && self.payload != []
      "| #{self.payload.at(0)} |"

    elsif @size === 1
      current_item = @first_item
      "| #{@first_item.payload} |"

    else
      string = ""

      (@size -1).times do |i|
        string << "#{get(i)}, "
      end
      string << "#{self.last_item.payload}"
      "| #{string} |"
    end
  end

end



