#!/bin/sh
d=`date "+%Y/%m/%d"`
wget --inet4-only -O /dev/stdout http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=10&min=0&index=0&kaNo=1&koiNo=5"

