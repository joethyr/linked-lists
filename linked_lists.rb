#
class LinkedList
  # head acts as a place to start for linkedlist
  attr_accessor :head

  def initialize
    # when we create a LinkedList we want it to intially be empty
    self.head = nil
  end

# adds a new node containing value to the end of the list
  def append(value)
    if self.head.nil?
      self.head = Node.new(value)
    else
      # find the last node in LinkedList and set the next node equal to a new node.
      last_node = self.head
      until last_node.next_node.nil?
        last_node = last_node.next_node
      end
      # we are at the end of the list.
      last_node.next_node = Node.new(value)
    end
  end

  private
  # only going to be used inside the LinkedList

  class Node
    attr_accessor :value, :next_node

    def initialize(value = nil, next_node = nil)
      self.value = value
      self.next_node = next_node
    end
  end
end

ll = LinkedList.new
ll.append(10)
ll.append(20)
puts ll.head.value
puts ll.head.next_node.value
