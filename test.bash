#!/bin/bash -xv

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

$(echo -e "1200\n20" > nums)
out=$(./income < nums)
expected="103万の壁突破!!!
アルバイト年収は124.8万円です"
[ "${out}" = "${expected}" ] || ng "$LINENO"

$(echo -e "1100\n10" > nums)
out=$(./income < nums)
expected="アルバイト年収は57.2万円です"
[ "${out}" = "${expected}" ] || ng "$LINENO"

$(echo -e "1000\n10" > nums)
out=$(./income < nums)
expected="千葉県の最低賃金を下回っています
労基に相談しましょう"
[ "${out}" = "${expected}" ] || ng "$LINENO"

$(echo -e "あ\n20" > nums)
out=$(./income < nums)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

$(echo 1200 > nums)
out=$(./income < nums)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

$(echo -e " " > nums)
out=$(./income < nums)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res
