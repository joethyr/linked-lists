#
class LinkedList
  # head acts as a place to start for linkedlist
  attr_accessor :head

  def initialize(head = nil)
    # when we create a LinkedList we want it to intially be empty
    @head = head
  end

  # adds a new node containing value to the end of the list
  def append(value)
    if head.nil?
      @head = Node.new(value)
    else
      # find the last node in LinkedList and set the next node equal to a new node.
      last_node = head
      last_node = last_node.next_node until last_node.next_node.nil?

      # we are at the end of the list.
      last_node.next_node = Node.new(value)
    end
  end

  private

  class Node
    attr_accessor :value, :next_node

    def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end
end

ll = LinkedList.new
ll.append(10)
ll.append(20)
puts ll.head.value
puts ll.head.next_node.value
