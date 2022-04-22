#以下の条件に従い、ある金額を支払うのに必要な紙幣と硬貨の枚数を出力するプログラムを作成してください。

#金額が大きい紙幣、硬貨から優先して利用する
#紙幣、硬貨は[1, 5, 10, 50, 100, 500, 1000, 5000, 10000]を対象とする


money = 6498
money_types = [10000, 5000, 1000, 500, 100, 50, 10, 5, 1]

# 結果を返すための配列を準備
result = []
# あまりの金額を計算するために利用
total = 0

# お金の単位の数だけループ処理
money_types.each do |type|
  # お金の枚数(個数)の計算
  amount = (money - total) / type
  # あまりの金額を出すために引かれる金額をtotalに設定
  total += type * amount
  # 結果を返すための配列に追加、[お金の単位, 枚数]の形
  result.push([type, amount])
end

# 金額を昇順にするかつ、hashで結果を返すので配列をhashに変換
result = result.reverse.to_h

p result