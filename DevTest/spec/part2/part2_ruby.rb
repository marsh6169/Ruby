=begin
第2章から配列やハッシュについて
勉強する
=end

names = ["小林","林","高野","鈴木"]
# i = 0
# while i < 4 do
#     puts("君の名は？")
#     puts("名前は#{names[i]}")
#     i = i + 1
# end

# names[0] = "野尻"
# i = 0
# while i < 4 do
#     puts("君の名は？")
#     puts("私の名前は#{names[i]}")
#     i = i + 1
# end

# puts("配列の要素数は#{names.size}")

# names.each do |n|
#     puts n
# end

#ハッシュの作り方
# song = {:title => "Paranoid Andorid",:artist => "Radiohead"} #キーにシンボル
# person = {"名前" => "高橋","仮名" => "タカハシ"} #キーに文字列
# mark = {11 => "Jack",12 => "Queen",13 => "King"} #キーに数字

# #シンボルをキーにする場合、ハッシュの作り方は2種類
# person1 = {:name => "後藤",:furigana => "ゴトウ"}
# person2 = {name:"後藤",furigana:"ゴトウ"}

# #ハッシュの操作
# address = {name:"高橋",furigana:"タカハシ"}
# address[:name]
# address[:furigana]
# address[:tel] = "000-1234-5678"
# puts address
# puts("私の名前は#{address[:name]}")

# address.each do |key,value|
#     puts "#{key}:#{value}"
# end

# #正規表現とパターン・マッチング
# puts /Ruby/ =~ "Yet Another Ruby Hacker,"
# puts /Ruby/ =~ "Ruby"
# puts /Ruby/ =~ "RUBY"
# puts /Ruby/i =~ "RUBY"

names.each do |name|
    if /林/ =~ name
        puts name
    end
end
