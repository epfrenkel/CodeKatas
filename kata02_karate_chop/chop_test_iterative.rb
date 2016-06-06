# Exercise from http://codekata.com/kata/kata02-karate-chop/
# By Evan Frenkel

require_relative 'chopper_iterative'
require 'test/unit'

class ChopTest < Test::Unit::TestCase
    def tests
        chopper_iterative = ChopperIterative.new
        assert_equal(-1, chopper_iterative.chop(3, []))
        assert_equal(-1, chopper_iterative.chop(3, [1]))
        assert_equal(0,  chopper_iterative.chop(1, [1]))
        #
        assert_equal(0,  chopper_iterative.chop(1, [1, 3, 5]))
        assert_equal(1,  chopper_iterative.chop(3, [1, 3, 5]))
        assert_equal(2,  chopper_iterative.chop(5, [1, 3, 5]))
        assert_equal(-1, chopper_iterative.chop(0, [1, 3, 5]))
        assert_equal(-1, chopper_iterative.chop(2, [1, 3, 5]))
        assert_equal(-1, chopper_iterative.chop(4, [1, 3, 5]))
        assert_equal(-1, chopper_iterative.chop(6, [1, 3, 5]))
        #
        assert_equal(0,  chopper_iterative.chop(1, [1, 3, 5, 7]))
        assert_equal(1,  chopper_iterative.chop(3, [1, 3, 5, 7]))
        assert_equal(2,  chopper_iterative.chop(5, [1, 3, 5, 7]))
        assert_equal(3,  chopper_iterative.chop(7, [1, 3, 5, 7]))
        assert_equal(-1, chopper_iterative.chop(0, [1, 3, 5, 7]))
        assert_equal(-1, chopper_iterative.chop(2, [1, 3, 5, 7]))
        assert_equal(-1, chopper_iterative.chop(4, [1, 3, 5, 7]))
        assert_equal(-1, chopper_iterative.chop(6, [1, 3, 5, 7]))
        assert_equal(-1, chopper_iterative.chop(8, [1, 3, 5, 7]))
    end
end
