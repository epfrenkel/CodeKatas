# Exercise from http://codekata.com/kata/kata02-karate-chop/
# By Evan Frenkel

require_relative 'chopper'
require 'test/unit'

class ChopTest < Test::Unit::TestCase
    def tests
      assert_equal(-1, Chopper.new.chop(3, []))
      assert_equal(-1, Chopper.new.chop(3, [1]))
      assert_equal(0,  Chopper.new.chop(1, [1]))
      #
      assert_equal(0,  Chopper.new.chop(1, [1, 3, 5]))
      assert_equal(1,  Chopper.new.chop(3, [1, 3, 5]))
      assert_equal(2,  Chopper.new.chop(5, [1, 3, 5]))
      assert_equal(-1, Chopper.new.chop(0, [1, 3, 5]))
      assert_equal(-1, Chopper.new.chop(2, [1, 3, 5]))
      assert_equal(-1, Chopper.new.chop(4, [1, 3, 5]))
      assert_equal(-1, Chopper.new.chop(6, [1, 3, 5]))
      #
      assert_equal(0,  Chopper.new.chop(1, [1, 3, 5, 7]))
      assert_equal(1,  Chopper.new.chop(3, [1, 3, 5, 7]))
      assert_equal(2,  Chopper.new.chop(5, [1, 3, 5, 7]))
      assert_equal(3,  Chopper.new.chop(7, [1, 3, 5, 7]))
      assert_equal(-1, Chopper.new.chop(0, [1, 3, 5, 7]))
      assert_equal(-1, Chopper.new.chop(2, [1, 3, 5, 7]))
      assert_equal(-1, Chopper.new.chop(4, [1, 3, 5, 7]))
      assert_equal(-1, Chopper.new.chop(6, [1, 3, 5, 7]))
      assert_equal(-1, Chopper.new.chop(8, [1, 3, 5, 7]))
    end
end
