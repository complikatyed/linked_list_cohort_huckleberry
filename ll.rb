#!/usr/bin/env ruby

require_relative 'lib/linked_list'

payloads = ARGV # ARGV holds the command line arguments that were passed in
# Now, build a LinkedList
ll = LinkedList.new

# And, populate it

#TODO: Push all of the items from the array into the LinkedList
#By pushing them in, turns them into LinkedListItems

unless payloads.empty?
  ll.push payloads(0)
end

ll.push(ARGV)

# Then, print it out
# POSSIBLE CHOICES:  print ll
# POSSIBLE CHOICES:  loop through the ll values
# MIGHT WANT TO: check for actual values in ll (and output "* => nil")
if ll.first_item
  print "* -> #{ll.get(0).inspect} -> nil"
else
  print "* -> nil"
end



