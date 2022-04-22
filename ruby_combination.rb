#異なるn個のものから2個を選ぶ、重複のない組み合わせを出力するプログラムを作成してください。

n = 5

p (1..n).to_a.combination(2).to_a

number = 5

# [1,2,3,4]を作成
array1 = (1..number-1).to_a
# [1,2,3,4,5]を作成
array2 = (1..number).to_a

# 結果を返す配列を定義
result_array = []

# 基準値を決める配列[1,2,3,4]の1から4までループ処理
array1.each do |number1|
  # 基準値より大きい数字を取得
  select_number_array = array2.select { |number2| number2 > number1 }
  # 1つずつ組み合わせを作って結果を返す配列に追加
  select_number_array.each do |select_number|
    result_array.push([number1, select_number])
  end
end


p result_array