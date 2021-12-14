#
class LinkedList
  # head acts as a place to start for linkedlist
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  # adds a new node containing value to the end of the list
  def append(value)
    if head.nil?
      @head = Node.new(value)
    else
      node = head
      node = node.next_node until node.next_node.nil?

      node.next_node = Node.new(value)
    end
  end

  # adds a new node containing value to the start of the list
  def prepend(value)
    if head.nil?
      @head = Node.new(value)
    else
      next_node = head
      @head = Node.new(value, next_node)
    end
  end

  # returns the total number of nodes in the list
  def size
    counter = 0
    node = head
    until node.nil?
      counter += 1
      node = node.next_node
    end
    counter
  end

  def find(value)
    node = head
    until node.nil?
      return true if node.value == value

      node = node.next_node
    end
    false
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
ll.prepend(15)
ll.prepend(8)
ll.prepend(3)
ll.prepend(9)
puts ll.head.value
puts ll.head.next_node.value
puts ll.size
