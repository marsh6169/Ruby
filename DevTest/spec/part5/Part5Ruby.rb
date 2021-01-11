#  #西暦からRubyの年齢を返す
#  ad = ARGV[0].to_i
#  age = ad - 1993
#  puts("Rubyが誕生してから#{age}年経過")

 #比較演算子
 #⇒「==」、「>」、「<=」など

 #論理演算子
 #⇒「&&」は且つ、「||」はあるいは

#  if x >=1 && x <=10 then
#     ・・・
# elsif
#     ・・・
# else
#     ・・・
#  end

# a = ARGV[0]
# b = ARGV[1]
# if a > b then
#     puts("#{a}と#{b}を比較して大きいのは#{a}")
# elsif a == b then
#     puts("#{a}と#{b}は同じ値")
# else
#     puts("#{a}と#{b}を比較して大きいのは#{b}")
# end

# unless文は条件が偽の時に処理を行う
# 以下はaがbより小さい時にメッセージを表示するunless文
# ※条件が偽のときに処理を行っていることに注目！
# a = 20
# b = 10
# unless a > b then   #aはbより大きくない場合は処理する
#     puts "aはbより小さい"
# end

# # 1つのオブジェクトに対して場合分けをする場合はcase文が良い
# tags = ["A","IMG","PRE"]
# tags.each do |item|
#     case item
#     when "P","A","I","B","BLOCKQUOTE"
#         puts "#{item} has a child."
#     when "IMG","BR"
#         puts "#{item} has no child."
#     else
#         puts "#{item} cannot be used."
#     end
# end

# # 以下は与えられた値が文字列か、数値か、それ以外かを
# # 判断するcase文
# array = ["A",1,nil]
# array.each do |arr|
#     case arr
#     when String
#         puts "#{arr} is String"
#     when Numeric
#         puts "#{arr} is Numeric"
#     else
#         puts "#{arr} is something"
#     end
# end

# filename = ARGV[0]
# file = File.open(filename)
# file.each do |line|
#     case line
#     when /info/i 
#         puts '[Info]メッセージが出力されました'
#         puts "**************************************"
#         puts "#{line}"
#         puts "**************************************"
#     when /warning/i
#         puts '[Warning]が出力されました。早急に確認してください。'
#         puts "**************************************"
#         puts "#{line}"
#         puts "**************************************"
#     else
#         puts "無視して大丈夫なメッセージです"
#         puts "**************************************"
#         puts "#{line}"
#         puts "**************************************"
#     end
# end

