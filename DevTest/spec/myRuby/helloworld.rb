# puts "ダブルクォートで表示する場合"
# puts "Hello World"
# puts 'シングルクォートで表示する場合'
# puts 'Hello World'

# puts "文字を表示させるコマンド(puts/print/p)で改行の有無が違うことを確認する"
# puts "putsの場合"
# puts "Hello World"
# print "printの場合"
# print "Hello World"
# p "pの場合"
# p "Hello World"

# File.open('C:\Users\y-sma\OneDrive\デスクトップ\name.txt') do |file|
#     file.each_line do |name|
#         if name.chomp == "abe" then
#             puts name
#         end
#     end
# end

# puts 'printで改行を入れる場合は\nを入れる'
# print '改行されるかな？'

# range = 5..9
# range.each{|num|
#     puts "#{num}"
# }
# #encoding:Shift-JIS
# puts('hello,\\ \'nRuby\'')
# puts("いづれかの御時にか女御更衣あまたさぶらいたまいけるなかに")
# puts("いとやむごとなき際にはあらぬがすぐれて時めきたまうありけり")

# puts(10)
# puts("10")
# puts(3.145)
# puts(0.332)
# print(10)
# print("10")
# print(3.145)
# p(10)
# p("10")
# p(3.145)
# p("3.145")

=begin
「たのしいRuby 第6版」サンプル
2020/10/20 作成
2020/10/31 一部コメント追加
2020/11/30 第6版っように更新
=end
# x = 10  #横
# y = 20  #縦
# z = 15  #高さ
# #表面積と体積を軽サインする
# area = (x * y + y * z + z * x) * 2
# volume = x * y * z
# #出力する
# puts("表面積=#{area}")
# puts("体積=#{volume}")

a = 20
if a >=10 then
    puts("greater")
else
    puts("smaller")
end

i = 1
while i < 10 do
    puts i
    i = i + 1
end

100.times do
    puts("All work and no play makes Jack a dull boy.")
end