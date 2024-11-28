#!/bin/bash -xv

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(echo -e "1200\n20" | ./income)
expected="バイト先の時給を教えてください(円)
一週間に働く時間を教えてください(時)
103万の壁突破!!!
アルバイト年収は124.8万円です"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo -e "1100\n10" | ./income)
expected="バイト先の時給を教えてください(円)
一週間に働く時間を教えてください(時)
アルバイト年収は57.2万円です"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo -e "1000\n10" | ./income)
expected="バイト先の時給を教えてください(円)
千葉県の最低賃金を下回っています
労基に相談しましょう"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo -e "あ\n20" | ./income)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "バイト先の時給を教えてください(円)" ] || ng "$LINENO"

out=$(echo -e "1200\n" "" | ./income)
expected="バイト先の時給を教えてください(円)
一週間に働く時間を教えてください(時)"
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo -e " " | ./income)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "バイト先の時給を教えてください(円)" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res
