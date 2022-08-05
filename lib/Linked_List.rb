require_relative 'Node'

class Linked_List
  attr_accessor :head, :tail

  def initialize(value=nil)
    @node = Node.new(value) unless value.nil?
    @head = @node
    @tail = @node
  end

  def append(value)
    # Add a new node containing value to the END of the list

  end

  def prepend(value)
    # Add a new node containing value to the FRONT of the list
  end

  def size
    # Returns the number of nodes in the list

  end

  def at(index)
    # Returns the node at the given index
  end

  def pop
    # Removes the last element from the list
  end

  def contains?(value)
    # Returns true if the value passed is in the list, otherwise returns false
  end

  def find(value)
    # Returns the index of the node containing the value, or nil if not found
  end

  def to_s
    # Represent the LL as strings so it can be printed to the console
    # E.g., ( value ) -> ( value ) -> ( value ) -> nil
  end

  def insert_at(index, value)
    # Insert a node at a given index
  end

  def remove_at(index)
    # Remove a node at a given index
  end

end
