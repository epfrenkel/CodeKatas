require 'test/unit'
require_relative 'anagrams'
class AnagramsTests < Test::Unit::TestCase
    def tests
        a = Anagrams.new('/usr/share/dict/words')
        assert(a.is_anagram('aB', 'ba'))
        assert(a.is_anagram('boaster', 'boRaTes'))
        assert(a.is_anagram('kinsHip', 'pinkish'))
        assert(a.is_anagram('ab', 'bac') == false)

        p a.get_anagrams('boaster')
        p a.get_anagrams('enlist')
    end
end
