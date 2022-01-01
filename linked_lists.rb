class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize(value)
    @head = Node.new(value)
  end

# adds a new node containing value to the end of the list
  def append(value)
    current_node = @head
    new_node = Node.new(value)
    current_node = current_node.next_node until current_node.next_node.nil?
    current_node.next_node = new_node
  end

# adds a new node containing value to the START of the list
  def prepend(value)
    new_head = Node.new(value)
    new_head.next_node = @head
    @head = new_head
  end

# returns the total number of nodes in the list
  def size
    counter = 0
    current_node = @head
    until current_node.nil?
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  def my_head
    "#{@head}, value = #{@head.value}"
  end

  def my_tail
    current_node = @head
    current_node = current_node.next_node until current_node.next_node.nil?

    "#{current_node}, value = #{current_node.value}"
  end

  # returns the node at the given index
  def at(index)
    current_node = @head
    index.times { current_node = current_node.next_node }
    current_node
  end

  # removes the last element from the list
  def pop
    current_node = @head
    until current_node.next_node.nil?
      previous_node = current_node
      current_node = current_node.next_node
    end
    previous_node.next_node = nil
  end

  # returns true if the passed in value is in the list and otherwise returns false.
  def contains?(value)
    current_node = @head
    boolean = false
    until current_node.nil?
      boolean = true if current_node.value == value
      current_node = current_node.next_node
    end
    boolean
  end

  # returns the index of the node containing value, or nil if not found
  def find(value)
    current_node = @head
    index = 0
    found = false
    until current_node.nil?
      found = true if current_node.data == value
      current_node = current_node.next_node
      index += 1 unless found
    end
    index if found
  end

  # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
  def to_s
    current_node = @head
    until current_node.nil?
      print "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
  end
end

linked_list = LinkedList.new(5)
linked_list.append(7)
linked_list.append(8)
linked_list.prepend(3)
linked_list.prepend(2)
p linked_list.to_s
p linked_list.size
p linked_list.my_head
p linked_list.my_tail
p linked_list.at(3)
# linked_list.pop
linked_list.append(9)
linked_list.prepend(6)
p linked_list.contains?(3)
p linked_list.contains?(4)
p linked_list.to_s
