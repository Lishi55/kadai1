#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Satoshi Nemoto miraiprj3104@icloud.com
# SPDX-License-Identifier: BSD-3-Clause

import sys

money = (int(52) * int(sys.argv[2]))
money = (money * int(sys.argv[1]))
money = (money/float(10000))
print("アルバイト年収は{}万円です".format(money))
