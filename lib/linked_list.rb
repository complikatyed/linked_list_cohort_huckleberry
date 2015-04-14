class LinkedList

  # Wondering if the whole LinkedListItem class definition needs to go right here?
  # That way when a new item is created, it's coming from inside here...
  #
  # Because shouldn't all of the things that are getting pushed up into the
  # new linked_list BE linked_list_items?
  # 
  # So wouldn't the "push" method actually involve creating a new Linked_List_Item?
  #
  # Also, while I like the (*data) option with differing variables, I'm not sure that's right...


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




