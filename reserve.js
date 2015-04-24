function ReserveSakura() {
  // 起動からタイムラグがあるので
  // 1分前にジョブを起動するようにしておき
  // fetchを飛ばす前にプログラムで時間を調整する.

  // config
  var mailTo = 'cutsea110@gmail.com';
  var url = 'http://ctsrsv.jp/sakura-jibika/rsvroom2.asp';
  // 先生
  // 5 : 石井
  // 3 : 和田
  // 28 : 辻榮
  // 11 : 神田
  // 12 : 出井
  // 1 : 希望なし
  var doc = 5;

  try {
    MailApp.sendEmail(mailTo, 'さくら耳鼻科予約待機', '予約準備スタンバイ');
    var now = new Date(),
        year = now.getFullYear(),
        month = now.getMonth() + 1,
        day = now.getDate(),
        ymd = year + '/' + month + '/' + day;
    // ジョブ起動は予約開始の1分前に設定されている前提(運用条件)
    now.setTime(now.getTime() + 60 * 1000);
    var hh = now.getHours(),
        mm = now.getMinutes(),
        idx = hh < 13 ? 0 : 1;
    var param = 'mode=0&No=100678&date=' + ymd + '&hour=' + hh + '&min=' + mm + '&index=' + idx + '&kaNo=1&koiNo=' + doc;
    Logger.log('post ' + url + '?' + param);
    MailApp.sendEmail(mailTo, 'さくら耳鼻科予約待機', hh + ':' + mm + 'に予約を入れるべく集中します!');

    var option = {
      'method' : 'post',
      'payload' : param,
      'muteHttpExceptions' : false
    };

    // 59秒まで待機させたい
    while (new Date().getSeconds() < 59);

    Logger.log('requesting...');
    var res = UrlFetchApp.fetch(url, option);
    Logger.log('requested.');
    MailApp.sendEmail(mailTo, 'さくら耳鼻科予約結果(' + res.getResponseCode() + ')', res.getContentText('UTF-8'));
    Logger.log('done.');
  } catch(e) {
    MailApp.sendEmail(mailTo, 'さくら耳鼻科予約失敗', e.message);
  }
}
