import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sonundNunber){
    final player = AudioCache();
    player.play('note2.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Piano',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: (){
                  playSound(1);
                }, child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: (){
                    playSound(2);
                  }, child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                    playSound(3);
                  }, child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: (){
                    playSound(4);
                  }, child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: (){
                    playSound(5);
                  }, child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green[900],
                  onPressed: (){
                    playSound(6);
                  }, child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.greenAccent,
                  onPressed: (){
                    playSound(7);
                  }, child: Text(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}