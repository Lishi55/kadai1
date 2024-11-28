# アルバイトの年収計算
![test](https://github.com/Lishi55/kadai1/actions/workflows/test.yml/badge.svg)

## 概要
- プログラムに時給と週に何時間働くかを入力することで、年収を算出する.<br>
103万の壁を超えた場合や、最低賃金を下回った場合警告する.

## 使用方法方法

WSL2をインストール

リポジトリをクローン
```bash
git clone https://github.com/Lishi55/kadai1.git
```

リポジトリに移動
```bash
cd kadai1
```

実行
```bash
./income
```

## 使い方
- ./income <br>
  バイト先の時給を教えてください(円)<br>
  入力:<br>
　一週間に働く時間を教えてください(時)<br>
  入力:<br> 
  結果を出力<br>

- 例
時給1100円で週に10時間働く場合
```bash
./income
バイト先の時給を教えてください(円)
1100
一週間に働く時間を教えてください(時)
10
アルバイト年収は57.2万円です
```

時給1000円で週10時間働く場合(最低賃金を下回っている場合)
```bash
./income
バイト先の時給を教えてください(円)
1000
千葉県の最低賃金を下回っています
労基に相談しましょう
```
など

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
- このプログラムの最低賃金は2024年11月28日時点の千葉県の最低賃金を使用しています
## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7〜3.10

## テスト環境
- Ubuntu 22.04 LTS

- © 2024 Satoshi Nemoto
