require_relative "node"

class HellTriangle

    def initialize ( array )
         @node = buildNode(nil, 0, 0, array)
    end

    def sum() 
        return sumNode(@node, 0)
    end

    private
        def sumNode(node, previousSum)
            if !node.leaf?
                leftSum = sumNode(node.left, previousSum + node.data)
                rightSum = sumNode(node.right, previousSum + node.data)

                return leftSum if leftSum >= rightSum
                return rightSum if   rightSum > leftSum
            else
                result = previousSum + node.data
                # p node.path + " = #{result}"
                return result
            end
        end


        def buildNode(parent, heigth, index, triangle)
            node = Node.new(parent, triangle[heigth][index])
            if heigth < (triangle.length - 1)
                node.left = buildNode(node, heigth + 1, index, triangle)
                node.right = buildNode(node, heigth + 1, index + 1, triangle)
            end
            return node
        end
end