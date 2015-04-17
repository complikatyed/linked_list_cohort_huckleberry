require_relative 'linked_list_item'

# A new LL can be created with  a payload or without...
#
# If the LL is created WITHOUT a seed-payload:
#     1. the payload value for the newly created @first_object will be nil
#     2. Some value needs to get pushed in later
#     3. this @first_object is also the @last_item
#
# If the LL is created with ONE seed-payload:
#     1. the @first_item's payload is created as the seed-payload value
#     2. the created @first_item is also the @last_item
#     3. the @first_item's payload value can be changed later with a push
#
# If the LL is created with MORE THAN ONE seed-payload item
#     1. the @first_item's payload value is created using the first seed parameter
#         ~ the @first_item that is created is also the @last_item
#     2. each subsequent seed-payload value causes a new lli to be created
#         ~ the seed-payload value becomes the new item's payload
#         ~ each new item becomes the @last_item as it is created
#
# QUESTIONS:
#
# 1. Do I need to define the @first_item as a special node?
# 2. Do I need three separate ways to create a new list, or can they be combined into one
#    using if and elseif
# 3. Can I query the number of parameters provided? If so, how?
#
#



class LinkedList
  attr_accessor :payload, :next_item, :size, :current_node

  def initialize(*payload)
    @size = 0

    payload.each do |payload|
      push
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

#### Eliza's 2nd version of the to_s method #####
 
  #def to_s
    #str = "| "
    #current_item = @first_item
    #until current_item.nil?
      #str << current_item.payload
      #punctuation = current_item.last? ? " " : ", "
      #current_item = current_item.next_item
    #end
    #str << "|"
    #str
  #end


# Eliza's 3rd version of the to_s method #####
# COMING TOMORROW

  #def to_s
    #str = "| "
    #current_item = @first_item
    #until current_item.nil?
      #str << current_item.payload
      #punctuation = current_item.last? ? " " : ", "
      #current_item = current_item.next_item
    #end
    #str << "|"
    #str
  #end

###########################


  def to_s
    if @size === 0 && self.payload == []
      "| #{nil.to_s}|"

    elsif @size === 0 && self.payload != []
      "| #{self.payload.at(0)} |"

    elsif @size === 1
      current_node = @first_item
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



