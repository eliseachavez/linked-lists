require_relative 'Node'

class Linked_List

  def initialize(value=nil)
    @node = Node.new(value) unless value.nil?
    @head = @node
    @tail = @node
  end

  def append(value)
    # Add a new node containing value to the END of the list
    new_node = Node.new(value)

    if @head.value.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
  end

  def prepend(value)
    # Add a new node containing value to the FRONT of the list
    new_node = Node.new(value)

    if @head.value.nil?
      @tail = new_node
    else
      new_node.next_node = @head
    end
    @head = new_node
  end

  def size
    # Returns the number of nodes in the list
    curr_node = @head
    size = 0
    until curr_node.nil?
      size += 1
      curr_node = curr_node.next_node
    end
    size
  end

  def at(index)
    # Returns the node at the given index
    curr_node = @head
    i = 1

    until curr_node.nil?
      return curr_node if i == index
      curr_node = curr_node.next_node
      i += 1
    end
  end

  def pop
    # Removes the last element from the list
    i = 1
    curr_node = @head
    popped_size = size - 1
    removed_node = @tail

    until i == popped_size
      curr_node = curr_node.next_node
      @tail = curr_node
      i += 1
    end

    @tail.next_node = nil
    removed_node
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
    curr_node = @head
    until curr_node.nil?
      print "( #{curr_node.value} ) -> "
      curr_node = curr_node.next_node
    end
    puts 'nil'
  end

  def insert_at(index, value)
    # Insert a node at a given index
  end

  def remove_at(index)
    # Remove a node at a given index
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end

end
