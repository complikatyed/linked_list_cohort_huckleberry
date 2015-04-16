#!/usr/bin/env ruby

require_relative 'lib/linked_list'

payloads = ARGV # ARGV holds the command line arguments that were passed in
# Now, build a LinkedList
ll = LinkedList.new

# And, populate it

ll.push()

# Then, print it out

puts ll.get(-1)


