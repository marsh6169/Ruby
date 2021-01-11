puts "breakの例"
i = 0
["Perl","Python","Ruby","scheme"].each do |lang|
    i += 1
    if i == 3
        break
    end
    p [i,lang]
end

puts "nextの例"
i = 0
["Perl","Python","Ruby","scheme"].each do |lang|
    i += 1
    if i == 3
        next
    end
    p [i,lang]
end

#🔻実行結果🔻
# breakの例
# [1, "Perl"]
# [2, "Python"]
# nextの例
# [1, "Perl"]
# [2, "Python"]
# [4, "scheme"]