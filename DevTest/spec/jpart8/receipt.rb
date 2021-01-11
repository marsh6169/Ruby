class Receipt

    VERSION = "1.0.0"   #定数

    def initialize(name)    #initializeメソッド
        @name = name    #インスタンスの初期化
        @lines = []
    end

    attr_accessor:name    #インスタンス変数の参照・変更するメソッドを定義する代わり
    # |attr_reader : name   |  参照のみ可能とするメソッドを生成(nameメソッド)   |
    # |attr_writer : name   |  変更のみ可能と留守メソッドを生成(name=メソッド)  |
    # |attr_accessor : name |  上記２つを実装する                              |
    

    def lines= (lines)     #インスタンス変数lineを変更するためのwriterメソッド
        @lines = lines
    end

    def calc
        total = 0
        @lines.each do |line|
            total += line[:price] * line[:num]
        end
        total
    end

    def output
        puts "レシート #{self.name}"
        @lines.each do |line|
            puts "#{line[:name]} #{line[:price]}円 X #{line[:num]}"
        end
        puts "合計金額：#{calc}円"
    end
end

r = Receipt.new("ストアA")
r.lines = [{name:"卵",price:200,num:1},
            {name:"大根",price:100,num:2}]
r.output
p Receipt::VERSION    #クラス名を経由すればクラスの定数を参照できる

#クラスメソッドはクラスそのものをレシーバとするメソッドのこと
#書き方は　class <<クラス名 ~ end　とする
class <<Receipt
    def create_receipt_xyz
        self.new("ストアXYZ")
    end
end


#クラスメソッドはクラス定義の中に記述することも可能
# class Receipt
#     class << Receipt
#         def dcrate_receipt_xyz
#             self.new("ストアXYZ")
#         end
#     end
# end

#また、class <<クラス名 ~ end の形式以外に
#def クラス名.メソッド名 ~ end の書き方でもクラスメソッドを定義できる
# def Receipt.create_receipt_xyz
#     self.new("ストアXYZ")
# end
#上記の場合、クラス定義の中にクラスメソッドを定義するのであれば
#以下の書き方も可能
# class Receipt
#     def self.create_receipt_xyz
#         self.new("ストアXYZ")
#     end
# end