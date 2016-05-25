class Anagrams
    def initialize(dict_loc)
        @dictionary = [[]]
        File.open(dict_loc, 'r').readlines.each do |word_line|
            word = word_line.strip
            if @dictionary[word.length]
                @dictionary[word.length] << word
            else
                @dictionary[word.length] = [word]
            end
        end
    end
    def is_anagram(a,b) a.downcase.chars.sort == b.downcase.chars.sort end

    def get_anagrams(word)
        anagrams = []
        @dictionary[word.length].each do |possible|
            if is_anagram(word, possible)
                anagrams << possible.downcase
            end
        end
        anagrams.sort
    end
end
