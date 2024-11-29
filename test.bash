#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Satoshi Nemoto miraiprj3104@icloud.com
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(echo 1200 20 | ./income)
expected="103万の壁突破
アルバイト年収は124.8万円です"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo 1100 10 | ./income)
expected="アルバイト年収は57.2万円です"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo 1000 10 | ./income)
expected="千葉県の最低賃金を下回っています
労基に相談しましょう"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo あ 20 | ./income)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo あ お | ./income)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 1200 | ./income)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo "" | ./income)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res
