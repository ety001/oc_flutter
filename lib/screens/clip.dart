import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Clip extends StatefulWidget {
  Clip({Key key, @required this.clipname, @required this.password}) : super(key: key);

  final String clipname;
  final String password;

  @override
  _ClipState createState() => _ClipState();
}

class _ClipState extends State<Clip> {
  WebSocketChannel _channel;
  List _messages;
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    if (widget.clipname == '' || widget.password == '') {
      Navigator.pop(context);
    }
    connect(widget.clipname, widget.password);
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
                MaterialPageRoute(builder: (context) => SendBox(channel: this._channel))
              );
            },
          ),
        ],
      ),
      body: ListView(
        controller: _scrollController,
        reverse: true,
        padding: const EdgeInsets.only(bottom: 20.0),
        children: generateWidget(),
      ),
    );
  }

  void connect(String clipname, String password) {
    final String _wsUrl = 'wss://oc-server.to0l.cn/$clipname/$password';
    if (_channel == null) {
      _channel = IOWebSocketChannel.connect(
        _wsUrl,
        pingInterval: Duration(seconds: 10),
      );
      _channel.stream.listen(listenCallback);
    }
  }

  List<Widget> generateWidget() {
    if (_messages == null) {
      return <Widget>[];
    }
    List<Widget> _msgList = [];
    _messages.forEach((msg) {
      _msgList.add(
        GestureDetector(
          onTap: () {
            print('tap: $msg');
          },
          child: Container(
            margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            padding: EdgeInsets.all(10.0),
            color: const Color.fromRGBO(0, 168, 232, 1.0),
            child: Text(
              msg,
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        )
      );
    });
    return _msgList;
  }

  void listenCallback(msg) {
    var data = jsonDecode(msg);
    if (data['type'] == 'all') {
      setState(() {
        _messages = data['data'];
      });
    } else if (data['type'] == 'single') {
      print('receive: $msg');
      setState(() {
        _messages.add(data['data']);
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _channel.sink.close();
  }
}

class SendBox extends StatefulWidget {
  SendBox({Key key, @required this.channel}) : super(key: key);

  final WebSocketChannel channel;

  @override
  _SendBoxState createState() => _SendBoxState();
}

class _SendBoxState extends State<SendBox> {
  String _msg = '';
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
                onChanged: (String msg) {
                  this._msg = msg;
                },
                onSubmitted: (String msg) {
                  this.send(msg);
                  // Navigator.pop(context);
                },
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: RaisedButton(
                onPressed: () {
                  print('send: $_msg');
                  send(_msg);
                  // Navigator.pop(context);
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

  void send(msg) {
    Map m = {"type": "single", "msg": msg};
    widget.channel.sink.add(jsonEncode(m));
  }
}
