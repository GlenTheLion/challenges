
class LinkedListNode
    attr_accessor :value, :next_node
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
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

class Stack
    attr_reader :data
        def initialize
            @data = nil
        end

    def push(value)
        @data = LinkedListNode.new(value, @data)  
    end

    def pop
        ogdata = @data.value
        @data = @data.next_node
        return ogdata   
    end
end

    def reverse_list(list)
        stack = Stack.new
    while list
        stack.push(list.value)
        list = list.next_node
    end

    return stack.data

end

node1 = LinkedListNode.new("p")
node2 = LinkedListNode.new("a", node1)
node3 = LinkedListNode.new("e", node2)
node4 = LinkedListNode.new("h", node3)

print_values(node4) 

puts "-------"

reverselist = reverse_list(node4)

print_values(reverselist)




