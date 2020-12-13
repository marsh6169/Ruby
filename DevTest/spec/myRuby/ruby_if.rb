####################
# Rubyの条件分岐
# 条件分岐のコードは
# if 条件
# else
# end
####################
puts "君の好きな数字は？"
number = gets.to_i
puts "\nあなたの番号は、#{number}。\n\nそれじゃあ、、、、\n"
if number > 10
    puts "僕の負けだよ・・・"
else
    puts "僕の勝ちさ！"
end