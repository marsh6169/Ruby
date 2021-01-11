def myloop
    while true
        yield   #ブロックを実行する
    end
end

num = 1
myloop do
    puts "num is #{num}"
    break if num > 10   #numが10を超えていたらbreakする
    num *= 2
end