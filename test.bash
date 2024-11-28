#!/bin/bash -xv

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(./kadai1.py 1200 20)
expected="103万の壁突破!!!
アルバイト年収は124.8万円です"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(./kadai1.py 1100 10)
expected="アルバイト年収は57.2万円です"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(./kadai1.py 1000 10)
expected="千葉県の最低賃金を下回っています
労基に相談しましょう"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(./kadai1.py 1200)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(./kadai1.py)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(./kadai1.py あ 12)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res
