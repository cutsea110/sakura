d=`date "+%Y/%m/%d"`
# 石井先生
wget -O /dev/stdout http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=10&min=0&index=0&kaNo=1&koiNo=5" | nkf -w
#wget http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=10&min=0&index=0&kaNo=1&koiNo=5"
# 石井先生の午後
#wget http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=15&min=0&index=1&kaNo=1&koiNo=5"
# 和田先生
#wget http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=10&min=0&index=0&kaNo=1&koiNo=3"
# 辻榮先生
#wget http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=10&min=0&index=0&kaNo=1&koiNo=28"
# 神田先生
#wget http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=10&min=0&index=0&kaNo=1&koiNo=11"
# 井出先生
#wget http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=10&min=0&index=0&kaNo=1&koiNo=12"
# 希望なし
#wget http://ctsrsv.jp/sakura-jibika/rsvroom2.asp --post-data="mode=0&No=100678&date=$d&hour=10&min=0&index=0&kaNo=1&koiNo=1"


# 小児科も
# gHeika1=1
# 皮膚科も
# gHeika2=1

# 佳子も
# gGroupFlg1=1
# 皮膚科も
# gGroupHeika12=1

# キャンセル
# mode=1

# 午後だとindex=1
# 午前午後のindex指定と時間が不整合だとアウトになるかも


# モニタ方法
while :; do sleep 1; wget -O /dev/stdout "http://ctsrsv.jp/sakura-jibika/roomview.asp?Mode=0&No=100678&Name=%88%C9%93%8C%81%40%93%DE%8F%8F&date=2015/08/31&kaNo=1&koiNo=&Eng=0" | nkf -w; done

