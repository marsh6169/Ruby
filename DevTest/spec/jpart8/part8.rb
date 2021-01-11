#インスタンスの生成
arr = Array.new
p arr

#instance_of?で引数に指定したクラスのインスタンスであるかがわかる
str = "Hello!"
p arr.instance_of?(Array)   #true
p str.instance_of?(String)  #true
p str.instance_of?(Array)   #false

#あるクラスと継承関係にあるかどうかを判別したいときは
#is-a?メソッドを使用する
s = "This is a String"
p s.is-a?(String)   #true
p s.is-a?(Array)    #false