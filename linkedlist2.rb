class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

  def reverse_list(list, previous=nil)
    
    next_node = list.next_node
    list.next_node = previous
    if next_node == nil
      return list
    end
    reverse_list(next_node, list) 

  end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
# node1.next_node = node3

print_values(node3)

# reversed = reverse_list(node3)

# print_values(reversed)

print_values(reverse_list(node3))
