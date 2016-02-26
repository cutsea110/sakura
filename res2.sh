#!/bin/sh
koi=20

for idx in 0 0 0 0 0 0 0 0 0 0;
do
  d=`date "+%Y/%m/%d"`
  h=`expr $idx / 4 \+ 10`
  m=`expr $idx % 4 \* 15`
  m=`printf %02d $m`
  wget --inet4-only -O /dev/stdout http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=$h&min=$m&index=$idx&kaNo=3&koiNo=$koi" | nkf -w
done

