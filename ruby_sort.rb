number_array = [3, 5, 9, 7, 1]

#ループ処理で配列の要素同士を比べるため要素の個数を取得
number_array_size = number_array.size

#比べる数値の要素分のループ処理
number_array_size.times do |i|
  #比べられる残りの要素分をループ処理
  #注意点：iは初期値は0のため（i + 1）にして残りの配列の要素の個数を計差している
  (number_array_size - (i + 1)).times do |j|
    #隣同士の数値を比較して左の数値の方が大きい場合は配列内の数値の位置を入れ替える
   if number_array[j] > number_array[j + 1]
    tmp = number_array[j]
    number_array[j] = number_array[j + 1]
    number_array[j + 1] = tmp
   end
  end
end

p number_array

#------------------------------------------------------------

