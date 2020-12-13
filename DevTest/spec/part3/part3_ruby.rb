# #コマンドラインからのデータ入力
# #コマンドラインから引数を受け取るにはARGV配列オブジェクトを使う
# puts "最初の引数：#{ARGV[0]}"
# puts "2番目の引数：#{ARGV[1]}"
# puts "3番目の引数：#{ARGV[2]}"
# puts "4番目の引数：#{ARGV[3]}"

# #パラメータは文字列になっているため。
# #数字として扱いたい場合はto_iメソッドを使う
# num0 = ARGV[0].to_i
# num1 = ARGV[1].to_i
# puts "#{num0} + #{num1} = #{num0 + num1}"
# puts "#{num0} - #{num1} = #{num0 - num1}"

# #ファイルを開いて内容を読み込む
# filename = ARGV[0]
# file = File.open(filename)
# text = file.read
# print text
# file.close

# #上を1行で書くと下のようになる
# print File.read(ARGV[0])

#欠点としてファイルの中身をすべて読み込まないと先に進まない
#1行ずつ書き出すのは↓
# filename = ARGV[0]
# file = File.open(filename)
# file.each_line do |line|
#     if /mj4o7iza/ =~ line
#         print line
#     end
# end
# file.close

# #特定のパターンのみを出力する
# pattern = Regexp.new(ARGV[0])
# filename = ARGV[1]
# file = File.open(filename)
# file.each do |line|
#     if pattern =~ line
#         print line
#     end
# end
# file.close

#自作メソッドの呼び出し
require_relative "simple_grep"
pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
simple_grep(pattern,filename)

require "date"
days = Date.today - Date.new(1993,2,24)
year = days/365
puts(year.to_i)

books = [
    {title:"猫街",author:"萩原朔太郎"},
    {title:"猫の事務所",author:"宮沢賢治"},
    {title:"猫語の教科書",author:"ポール・キャリコ"},
]
p books
pp books