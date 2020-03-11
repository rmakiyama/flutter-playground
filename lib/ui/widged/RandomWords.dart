import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _words = <WordPair>[];
  final _biggerFont = const TextStyle(
    color: Colors.black87,
    fontSize: 18.0,
  );

  @override
  void initState() {
    super.initState();
    _words.addAll(generateWordPairs().take(25));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildWords(_words),
    );
  }

  Widget _buildWords(List<WordPair> words) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: words.length,
      itemBuilder: (context, index) {
        return _buildRow(words[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      onTap: () {
        print(pair.asPascalCase);
      },
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
