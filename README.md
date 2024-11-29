# アルバイトの年収計算
![test](https://github.com/Lishi55/kadai1/actions/workflows/test.yml/badge.svg)

## 概要
- プログラムに時給と週に何時間働くかを入力することで、年収を算出する<br>
103万の壁を超えた場合や、最低賃金を下回った場合警告する<br>
<p> このプログラムでは一年を52週間として扱います

## 使用方法

リポジトリをクローン
```bash
$ git clone https://github.com/Lishi55/kadai1.git
```

リポジトリに移動
```bash
$ cd kadai1
```

パーミッションを変更　実行権限を付与
```bash
$ chmod +x income
```

実行
```bash
$ echo [時給] [一週間に働く時間]./income
```

## 使い方
- echo [時給] [一週間に働く時間] | ./income <br>
  結果を出力<br>

- 例
時給1100円で週に10時間働く場合
```bash
$ echo 1100 10 | ./income
アルバイト年収は57.2万円です
```

時給1000円で週10時間働く場合(最低賃金を下回っている場合)
```bash
$ echo 1000 10 | ./income
千葉県の最低賃金を下回っています
労基に相談しましょう
```
など

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます
- このプログラムの最低賃金は2024年11月28日時点の千葉県の最低賃金を使用しています
- © 2024 Satoshi Nemoto
## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7〜3.10

## テスト環境
- Ubuntu 22.04 LTS
