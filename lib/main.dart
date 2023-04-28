import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text('xylophone'),
          ),
        ),
        body: musicBody()),
  ));
}

class musicBody extends StatelessWidget {
  const musicBody({Key? key}) : super(key: key);

  @override
  void pianokey(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildkey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          foregroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          pianokey(soundNumber);
        },
        child: Text('welcome'),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildkey(color: Colors.yellow, soundNumber: 1),
        buildkey(color: Colors.red, soundNumber: 2),
        buildkey(color: Colors.teal, soundNumber: 3),
        buildkey(color: Colors.purple, soundNumber: 4),
        buildkey(color: Colors.blue, soundNumber: 5),
        buildkey(color: Colors.orange, soundNumber: 6),
        buildkey(color: Colors.indigo, soundNumber: 7),
      ],
    );
  }
}
