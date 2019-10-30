import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '网络剪切板',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child:   Text(
                  '网络剪切板',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Text('多终端同步文字信息, 最多50条'),
              Text('输入剪切板名称: public，密码: public，可以进行留言'),
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 40.0, right: 40.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '剪切板名称',
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 40.0, right: 40.0),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: '剪切板密码',
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClipContent())
                    );
                  },
                  colorBrightness: Brightness.light,
                  textTheme: ButtonTextTheme.primary,
                  child: const Text(
                    '开始使用',
                    style: TextStyle(fontSize: 20)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClipContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络剪切板'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.send),
            tooltip: 'Show Snackbar',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SendBox())
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 20.0),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print('tap');
            },
            child: Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.all(10.0),
              color: const Color.fromRGBO(0, 168, 232, 1.0),
              child: Text(
                'https://d1fa9c7844vy1r.cloudfront.net/wibu_downloads/codemeter/user/6.81/win/CodeMeterRuntime.exe?response-content-disposition=attachment%3B%20filename%3DCodeMeterRuntime.exe&response-content-type=application%2Fforce-download&Expires=1556297460&Signature=MzRdidr5mv1lHh89TSMdWWvTqfGWP8vSqFsVJMO3HWB2PXCmYL0m3nrjEqJRqYtfaEmDFrIDP8bNUbEze82BbRhhORXTeVAFkpkbxnVx1T4rdKau7n9inUNLU8sm3Wq-9eNiFbDSS91DHMvdCLAIwle6ZPJuSZL6o5mtmqOl~bqkqpeWTHNktATC7aRAKhK1NtnRyDHaosrTwAOkTXpRRMyLpOIoU54e15gQxElIF8NvW6vz2aBJGGCJdd8ThwHobVhasE6s-STSCIc2psKeEgzmLbxGuNN7yRwFaxCZqWKk71g7~APAPUHWsYBvV-AyyiAkD0-VwfvipQx5PLR8BA__&Key-Pair-Id=APKAI544HQODB4S5Z6KQ',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('tap');
            },
            child: Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.all(10.0),
              color: const Color.fromRGBO(0, 168, 232, 1.0),
              child: Text(
                'https://d1fa9c7844vy1r.cloudfront.net/wibu_downloads/codemeter/user/6.81/win/CodeMeterRuntime.exe?response-content-disposition=attachment%3B%20filename%3DCodeMeterRuntime.exe&response-content-type=application%2Fforce-download&Expires=1556297460&Signature=MzRdidr5mv1lHh89TSMdWWvTqfGWP8vSqFsVJMO3HWB2PXCmYL0m3nrjEqJRqYtfaEmDFrIDP8bNUbEze82BbRhhORXTeVAFkpkbxnVx1T4rdKau7n9inUNLU8sm3Wq-9eNiFbDSS91DHMvdCLAIwle6ZPJuSZL6o5mtmqOl~bqkqpeWTHNktATC7aRAKhK1NtnRyDHaosrTwAOkTXpRRMyLpOIoU54e15gQxElIF8NvW6vz2aBJGGCJdd8ThwHobVhasE6s-STSCIc2psKeEgzmLbxGuNN7yRwFaxCZqWKk71g7~APAPUHWsYBvV-AyyiAkD0-VwfvipQx5PLR8BA__&Key-Pair-Id=APKAI544HQODB4S5Z6KQ',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('tap');
            },
            child: Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.all(10.0),
              color: const Color.fromRGBO(0, 168, 232, 1.0),
              child: Text(
                'https://d1fa9c7844vy1r.cloudfront.net/wibu_downloads/codemeter/user/6.81/win/CodeMeterRuntime.exe?response-content-disposition=attachment%3B%20filename%3DCodeMeterRuntime.exe&response-content-type=application%2Fforce-download&Expires=1556297460&Signature=MzRdidr5mv1lHh89TSMdWWvTqfGWP8vSqFsVJMO3HWB2PXCmYL0m3nrjEqJRqYtfaEmDFrIDP8bNUbEze82BbRhhORXTeVAFkpkbxnVx1T4rdKau7n9inUNLU8sm3Wq-9eNiFbDSS91DHMvdCLAIwle6ZPJuSZL6o5mtmqOl~bqkqpeWTHNktATC7aRAKhK1NtnRyDHaosrTwAOkTXpRRMyLpOIoU54e15gQxElIF8NvW6vz2aBJGGCJdd8ThwHobVhasE6s-STSCIc2psKeEgzmLbxGuNN7yRwFaxCZqWKk71g7~APAPUHWsYBvV-AyyiAkD0-VwfvipQx5PLR8BA__&Key-Pair-Id=APKAI544HQODB4S5Z6KQ',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('tap');
            },
            child: Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.all(10.0),
              color: const Color.fromRGBO(0, 168, 232, 1.0),
              child: Text(
                'https://d1fa9c7844vy1r.cloudfront.net/wibu_downloads/codemeter/user/6.81/win/CodeMeterRuntime.exe?response-content-disposition=attachment%3B%20filename%3DCodeMeterRuntime.exe&response-content-type=application%2Fforce-download&Expires=1556297460&Signature=MzRdidr5mv1lHh89TSMdWWvTqfGWP8vSqFsVJMO3HWB2PXCmYL0m3nrjEqJRqYtfaEmDFrIDP8bNUbEze82BbRhhORXTeVAFkpkbxnVx1T4rdKau7n9inUNLU8sm3Wq-9eNiFbDSS91DHMvdCLAIwle6ZPJuSZL6o5mtmqOl~bqkqpeWTHNktATC7aRAKhK1NtnRyDHaosrTwAOkTXpRRMyLpOIoU54e15gQxElIF8NvW6vz2aBJGGCJdd8ThwHobVhasE6s-STSCIc2psKeEgzmLbxGuNN7yRwFaxCZqWKk71g7~APAPUHWsYBvV-AyyiAkD0-VwfvipQx5PLR8BA__&Key-Pair-Id=APKAI544HQODB4S5Z6KQ',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('tap');
            },
            child: Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.all(10.0),
              color: const Color.fromRGBO(0, 168, 232, 1.0),
              child: Text(
                'https://d1fa9c7844vy1r.cloudfront.net/wibu_downloads/codemeter/user/6.81/win/CodeMeterRuntime.exe?response-content-disposition=attachment%3B%20filename%3DCodeMeterRuntime.exe&response-content-type=application%2Fforce-download&Expires=1556297460&Signature=MzRdidr5mv1lHh89TSMdWWvTqfGWP8vSqFsVJMO3HWB2PXCmYL0m3nrjEqJRqYtfaEmDFrIDP8bNUbEze82BbRhhORXTeVAFkpkbxnVx1T4rdKau7n9inUNLU8sm3Wq-9eNiFbDSS91DHMvdCLAIwle6ZPJuSZL6o5mtmqOl~bqkqpeWTHNktATC7aRAKhK1NtnRyDHaosrTwAOkTXpRRMyLpOIoU54e15gQxElIF8NvW6vz2aBJGGCJdd8ThwHobVhasE6s-STSCIc2psKeEgzmLbxGuNN7yRwFaxCZqWKk71g7~APAPUHWsYBvV-AyyiAkD0-VwfvipQx5PLR8BA__&Key-Pair-Id=APKAI544HQODB4S5Z6KQ',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SendBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
              child: TextField(
                autofocus: true,
                maxLines: 9,
                decoration: InputDecoration(
                  labelText: '要发送的内容',
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                colorBrightness: Brightness.light,
                textTheme: ButtonTextTheme.primary,
                child: const Text(
                  '发送',
                  style: TextStyle(fontSize: 20)
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}
