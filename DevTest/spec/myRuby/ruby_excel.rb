# RubyでWindowsのアプリケーションを呼び出す時は
# require 'win32ole'と記述する
require 'win32ole'

# RubyでExcelを起動させたいときは
# excel = WIN32OLE.new('Excel.Application')
# と記述する(ただし、このときはExcelは非表示)
excel = WIN32OLE.new('Excel.Application')

# Excelを表示状態にさせたい場合は
# excel.visible = true
excel.visible = true
WIN32OLE.const_load(excel)

# ここまでくれば、あとはVBAとほぼ同じ
workbook = excel.workbooks.add
sheet = workbook.sheets(1)
SavePass = "C:\Users\y-sma\OneDrive\デスクトップ"
sheet.range("A1").value = "TEST"
workbook.save


# 九九の表を作成
puts "九九の表を作成します。"
sheet2 = workbook.worksheets().add
sheet2.name = "九九の表"

range = 1..9

range.each{|i|
    sheet2.cells(1,i+1).value = i
    sheet2.cells(1,i+1).interior.themecolor = excel;;XlThemeColorAccent1
    range.each{|j|
        sheet2.cells(j+1,1).value = j
        sheet2.cells(j+1,i+1).value = i * j
    }
}
# sheet2.selection.currentregion.borders.linestyle = excel::Xlcontinuos
puts "処理が完了しました"