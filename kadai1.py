#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Satoshi Nemoto miraiprj3104@icloud.com
# SPDX-License-Identifier: BSD-3-Clause

import sys
if int(sys.argv[1]) >= 1076:
    money = (int(52) * float(sys.argv[2]))
    money = (money * int(sys.argv[1]))
    money = (money/float(10000))
    if 103 <= money:
        print("103万の壁突破!!!")
    print("アルバイト年収は{}万円です".format(money))
else:
    print("千葉県の最低賃金を下回っています")
    print("労基に相談しましょう")
