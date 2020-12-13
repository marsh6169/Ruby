# 変数の種類
#ローカル変数　　　⇒　変数名の頭が小文字or「_」で始まる
#グローバル変数　　⇒　変数名の頭が「$」で始まる
#インスタンス変数　⇒　変数名の頭が「@」で始まる
#クラス変数　　　　⇒　変数名の頭が「@@」で始まる
#定数　　　　　　　⇒　辺ス名の先頭が大文字で始まる

# ローカル変数とグローバル変数の挙動の違いを見る
$x = 0  #グローバル変数
x = 0   #ローカル変数
require_relative "sub"
p $x
p x



