class Receipt
    @@count = 0     #outputメソッドの呼び出し回数

    def Receipt.count   #呼び出し回数を参照するためのクラスメソッド
        @@count
    end

    def initialize(name)    #インスタンス変数の初期化
        @name = name
        @lines = []
    end

    def lines= (lines)
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
        puts "レシート #{@name}"
        @lines.each do |line|
            puts "#{line[:name]} #{line[:price]} X #{line[:num]}"
        end
        puts "合計金額 #{calc}円"
        @@count += 1
    end
end

r1 = Receipt.new("ストアA")
r2 = Receipt.new("ストアB")

r1.lines = [{name:"卵",price:200,num:2},
           {name:"白菜",price:150,num:1},
           {name:"ジュース",price:150,num:2}]

r1.output
r2.output

p Receipt.count