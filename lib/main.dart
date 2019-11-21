import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: RamdomWords(),
        ),
      ),
    );
  }
}

class RamdomWordsState extends State<RamdomWords>{
  @override
  Widget build(BuildContext context){
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }

}

class RamdomWords extends StatefulWidget{
  @override
  RamdomWordsState createState() => new RamdomWordsState();
}