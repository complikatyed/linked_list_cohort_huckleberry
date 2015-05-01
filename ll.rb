#!/usr/bin/env ruby

require_relative 'lib/linked_list'

payloads = ARGV # ARGV holds the command line arguments that were passed in

# Now, build a LinkedList
ll = LinkedList.new

# Pushes each payload
payloads.each do |payload|
  ll.push payload
end

# Print the characters '* -> ' every time, because every version needs it
print "* -> "

# Then go through the index and print the data in the required format
ll.size.times do |i|
  print "#{ll.get(i).inspect} -> "
end

# Print 'nil' every time, because every version needs it
print "nil"



