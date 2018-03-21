require_relative "hell_triangle"
require "test/unit"


class TriangleTestUnit < Test::Unit::TestCase

    def test_triangle1
        triangle = [[6],[3,5],[9,7,1],[4,6,8,4]]
        assert_equal(26, HellTriangle.new(triangle).sum())
    end

    def test_triangle2
        triangle = [ [ 4 ], [ 9, 8 ], [ 7, 1, 9 ], [ 2, 4, 9, 9 ] ]
        assert_equal(30, HellTriangle.new(triangle).sum())
    end

    def test_triangle3
        triangle = [ [ 1 ], [ 5, 6 ], [ 8, 1, 4 ], [ 2, 1, 2, 6 ] ]
        assert_equal(17, HellTriangle.new(triangle).sum())
    end

    def test_triangle4
        triangle = [ [ 5 ], [ 3, 3 ], [ 2, 0, 0 ], [ 3, 8, 7, 0], [ 0, 3, 0, 2 , 3 ] ]
        assert_equal(21, HellTriangle.new(triangle).sum())
    end
end