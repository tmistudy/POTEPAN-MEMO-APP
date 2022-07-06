require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.chomp

# メモ作成
def memo(file_name)
  # 入力した内容を配列に格納
  lines = $stdin.readlines
  # csvに出力
  CSV.open("#{file_name}.csv", "a") do |csv|
    # 配列を取り出す
    lines.each do |line|
      text = line.chomp
      # 取り出した内容をcsvに出力
      csv << [text]
    end
  end
end

# 1(新規でメモを作成)を選んだ場合
if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  # ファイル名入力
  file_name = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したら Ctrl + D をおします"
  memo(file_name)

# 2(既存のメモ編集するを選んだ場合
elsif memo_type == "2"
  puts "編集するファイル名を拡張子を除いた形で入力してください"
  # ファイル名入力
  file_name = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したら Ctrl + D をおします"
  memo(file_name)

# 1、2以外を入力した場合 
else
  puts "1または2を入力してください"
end

