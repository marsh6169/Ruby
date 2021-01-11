#引数の数が不安定な場合は「*変数名」とする
def foo(*args)
    args
end

p foo(1,2,3)

#少なくとも1つは引数が必須の場合の記述方法
def meth(arg,*args)
    [arg,args]
end

p meth(1)
p meth(1,2,3)

#最初と最後の引数のみ必須の場合の記述方法
def a(a,*b,c)
    [a,b,c]
end

p a(1,2,3,4,5,6)
p a(1,2)

#キーワード引数
def area(x:0,y:0,z:0)
    xy = x*y
    yz = y*z
    zx = z*xy
    (xy + yz + zx) * 2
end

p area(x:2,y:3,z:4)
p area(z:2,y:4,x:3) #⇒キーワードの順序を変更
p area(y:2,z:3) #キーワードを省略する

#配列を引数として渡す場合
def hoge(a,b,c)
    a+b+c
end

p hoge(1,2,3)

args1 = [2,3]
p hoge(1,*args1)

args2 = [1,2,3]
p hoge(*args2)

#ハッシュオブジェクトは通常「{}」と記述するが、メソッドの引数として
#ハッシュを渡す場合には「{}」を省略できる
def foga(arg)
    arg
end

p foga({"a"=>1,"b"=>2}) #通常のハッシュの書き方
p foga("a"=>1,"b"=>2)   #{}を省略した書き方
p foga(a:1,b:2) #{}を省略した書き方

def hogefoga(args1,args2)
    [args1,args2]
end

p hogefoga(100,a:1,b:2) #引数の最後にハッシュを渡す場合の書き方