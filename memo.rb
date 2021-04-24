require "csv"

puts "1(新規でメモを作成） 2(既存のメモ編集する）"

memo_type = gets.chomp.to_i

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp.to_s
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを押します"
  text = readlines.map(&:chomp)
  
  CSV.open("#{file_name}.csv", "w") do |csv|
    csv << text
  end
  
elsif memo_type == 2
  puts "拡張子を除いた追記したいファイル名を入力してください"
  file_name = gets.chomp.to_s
  puts "追記したい内容を記入してください"
  puts "完了したらCtrl + Dを押します"
  text = readlines.map(&:chomp)
 
 
  CSV.open("#{file_name}.csv", "a") do |csv|
    csv << text
  end
else
  puts "もう一度やり直してください"
end