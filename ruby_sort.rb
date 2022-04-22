
#sortメソッドを利用せず、5つの異なる1桁の数字を昇順ソートして出力するプログラムを作成してください。

#アルゴリズム学習
#バブルソート
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

#クイックソート
number_array = [3, 5, 9, 7, 1]

# クイックソート用のメソッド作成
def quick_sort(array)
  # 比べる数値の配列の要素がない場合は比べる必要がないので空配列を返す
  return array if array.size < 1

  # 数値比較の基準の数値を決める
  pivot = array.shift

  # 基準の数値より小さい数値(left)と大きい数値(right)を入れるの空配列を定義
  left = []
  right = []

  # 数値の要素分ループ処理
  array.each do |item|
    # 基準の数値より小さい場合は左に移動(leftの配列に入れる)、大きい場合は右に移動(leftの配列に入れる)
    if item < pivot
      left.push(item)
    else
      right.push(item)
    end
  end

  # leftとrightの配列が昇順になるまでquick_sortメソッド(自分自身のメソッド)を使い、最後に１つの配列にまとめる
  quick_sort(left) + [pivot] + quick_sort(right)
end

p quick_sort(number_array)

#---------------------------------------------------------


