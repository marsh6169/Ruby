class String
    def count_word
        arry = self.split(" ")
        return arry.size
    end
end

str = "Just Another Ruby Newbie."
p str.count_word