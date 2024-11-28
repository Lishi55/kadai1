# アルバイトの年収計算
![test](https://github.com/Lishi55/kadai1/actions/workflows/test.yml/badge.svg)

## 概要
- プログラムに時給と週に何時間働くかを入力することで、年収を算出する.
  103万の壁を超えた場合や、最低賃金を下回った場合警告する.

## インストール方法
リポジトリをクローン
```bash
git clone https://github.com/Lishi55/kadai1.git
```

リポジトリに移動
```bash
cd kadai1
```

## 使い方
- ./kadai1 [時給] [一週間に働く時間] 
    結果を出力
- 例  
時給1100円で週に10時間働く場合
```bash
./kadai1 1100 10  
アルバイト年収は57.2万円です
```

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7〜3.10

## テスト環境
- Ubuntu 22.04 LTS

- © 2024 Satoshi Nemoto
