import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  var Bottom;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text('Ghostuu'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(70),
                child: Container(
                  width: 400.0,
                  height: 100.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          color: Colors.white,
                          onPressed: () {
                            final player = AudioCache();
                            player.play('sound2.mp3');
                          },
                          child: Row(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(Icons.play_arrow),
                              Text("Press here to fool  "),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  final player = AudioCache();
                  player.clear('explosion.mp3');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
