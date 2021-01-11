sum = 0
i = 1
while i <=5
    sum += i
    i += 1
end
puts sum

#for文で書いた場合
# for i in 1...5
#     sum += i
# end
# ptus sum

#⇒for文では変数iを1プラズするコードは明示的に書いておらず、
#while文では明示的に記述しているため、上のような場合はfor文を
#使用したほうがわかりやすい(while文は範囲オブジェクトがわからないときに使う)
