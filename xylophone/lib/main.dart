import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);

  final String title = 'efawef';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  var mcPlayerAudio;

  void mcNotePlay(int notesNum) {
    assetsAudioPlayer.open(
      Audio("assets/note$notesNum.wav"),
    );
  }

  Expanded mcKey({int keyNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          mcNotePlay(keyNumber);
        },
        child: Text('xyclophone'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          mcKey(keyNumber: 1, color: Colors.red),
          mcKey(keyNumber: 2, color: Colors.orange),
          mcKey(keyNumber: 3, color: Colors.yellow),
          mcKey(keyNumber: 4, color: Colors.green),
          mcKey(keyNumber: 5, color: Colors.teal),
          mcKey(keyNumber: 6, color: Colors.purple),
        ],
      ),
    );
  }
}
