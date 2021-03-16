require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"
   
number = gets.chomp.to_i

if number == 1
    puts "拡張子を除いた新規ファイル名を入力して下さい"
else number == 2
    puts "拡張子を除いた既存ファイル名を入力して下さい"
end


file_name = gets.chomp

puts "メモしたい内容を入力して下さい"
puts "完了したら[Enter]を押して下さい"
comment = gets.chomp

class Text
    def new_text(file_name, comment)
        CSV.open("./memo_file/#{file_name}.csv", "w") do |test|
            test << ["#{comment}"]
        end
    end
    
    def continu_text(file_name, comment)
        CSV.open("./memo_file/#{file_name}.csv", "a") do |test|
            test << ["#{comment}"]
        end
    end
end

text1 = Text.new

if number == 1
    text1.new_text(file_name, comment)
else number == 2
    text1.continu_text(file_name, comment)
end

