# for文のフォーマット
# for 変数 in 繰り返しの初めの数..繰り返し終了の数 do
#     繰り返したい処理
# end
# ※doは省略可能
sum = 0
for i in 1..5
    sum = sum + i
end
puts sum
# 🔻結果🔻
# 15

#timesメソッドとfor文の書き方の違い
#■timesメソッドの場合
# sum = 0
# from = 10
# to = 20
# (to-  from + 1).times do |i|
#     sum = sum + (i + from)
# end

# #■for文の場合
# for i in from..to
#     sum = sum + i
# end