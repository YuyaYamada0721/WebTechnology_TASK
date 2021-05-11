# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get = cgi['goya']
  get2 = cgi['goya2']
  get3 = cgi['goya3']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>ゴーヤの大きさと売った相手の情報は下記になります</p>
      文字列：#{get}
      <p>ゴーヤの譲渡先が自家消費ではないものの情報は下記になります</p>
      文字列：#{get2}
      <p>ゴーヤの品質が悪いものの情報は下記になります</p>
      文字列：#{get3}
    </body>
  </html>"
}
