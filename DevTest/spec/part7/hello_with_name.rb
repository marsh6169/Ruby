def hello(name="Ruby")
    puts "hello,#{name}"
end

hello()
hello("world")

def volume(x,y,z)
    return x*y*z
end

puts volume(10,20,30)