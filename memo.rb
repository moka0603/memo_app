require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.chomp.to_i

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    csv_name = gets.chomp
    puts "メモしたい内容を入力してください"
    puts "完了したらCtrl＋Dを押してください"
    memo = readlines
    CSV.open("#{csv_name}.csv", "w") do |text|
      text << memo 
    end 
elsif memo_type ==2
    puts "読み込みたい拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp
    puts "編集内容を記入してください"
    puts "完了したらCtrl＋Dを押してください"
    memo = readlines
    CSV.open("#{file_name}.csv", "a") do |text|
      text << memo
    end
end
