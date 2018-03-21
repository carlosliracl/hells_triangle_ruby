class Node
    attr_accessor :parent, :data, :left, :right

    def initialize(parent, data)
        @parent = parent
        @data = data
    end

    def leaf?
        return @left.nil?  && @right.nil?
    end

    def path
        return (parent.nil? ? "" : "#{parent.path} + ") + "#{data}" 
    end
end