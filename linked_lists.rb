#
class LinkedList
  # head acts as a place to start for linkedlist
  attr_accessor :head

  def initialize
    # when we create a LinkedList we want it to intially be empty
    self.head = nil
  end

  private
  # only going to be used inside the LinkedList

  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      self.value = value
      self.next_node = next_node
    end
  end
end
