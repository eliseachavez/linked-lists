class Node
  attr_reader :value

  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end

end
