require_relative 'Node'

class linkedList

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

    until i == popped_size
      curr_node = curr_node.next_node
      @tail = curr_node
      i += 1
    end

    @tail.next_node = nil
  end

  def contains?(value)
    # Returns true if the value passed is in the list, otherwise returns false
    curr_node = @head

    until curr_node.nil?
      return true if curr_node.value == value

      curr_node = curr_node.next_node
    end
    false
  end

  def find(value)
    # Returns the index of the node containing the value, or nil if not found
    curr_node = @head
    i = 1

    until curr_node.nil?
      return i if curr_node.value == value

      curr_node = curr_node.next_node
      i += 1
    end
    nil
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
    new_node = Node.new(value)
    i = 2
    curr_node = @head

    until i > index
      if i == index
        new_node.next_node = curr_node.next_node
        curr_node.next_node = new_node
      end
      @head = new_node if index == 1
      @tail = new_node if index == size

      curr_node = curr_node.next_node
      i += 1
    end
  end

  def remove_at(index)
    # Remove a node at a given index
    i = 1
    curr_node = @head
    prev_node = nil

    until curr_node.nil?
      prev_node.next_node = curr_node.next_node if i == index

      prev_node = curr_node
      curr_node = curr_node.next_node
      i += 1
    end
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end

end
