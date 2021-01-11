class AccessTest
    def pub
        puts "Pub is a public method."
    end

    def priv
        puts "Priv is a private method."
    end

    private :priv

end

access = AccessTest.new
access.pub
#access.privだとエラーになる