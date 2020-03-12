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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildWords(context, _words),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _addWord,
        label: Text(
          "ADD WORD",
        ),
        icon: Icon(
          Icons.add,
        ),
      ),
    );
  }

  Widget _buildWords(context, List<WordPair> words) {
    return Center(
      child: _words.isEmpty
          ? Text("word is empry")
          : ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: words.length,
              itemBuilder: (context, index) {
                return _buildNewRow(context, words[index]);
              },
            ),
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

  Widget _buildNewRow(context, WordPair pair) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text(pair.asPascalCase),
        ));
        print(pair.asPascalCase);
      },
      borderRadius: BorderRadius.all(Radius.circular(24)),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.note,
                color: Colors.blue,
              ),
            ),
            Text(
              pair.asPascalCase,
              style: _biggerFont,
            ),
          ],
        ),
      ),
    );
  }

  void _addWord() {
    setState(() {
      _words.add(WordPair.random());
    });
  }
}
