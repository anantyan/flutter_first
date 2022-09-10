import 'package:flutter/material.dart';

import '../list/list.dart';

class SavedWords extends StatefulWidget {
  const SavedWords({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SavedWordsState();
}

class _SavedWordsState extends State<SavedWords> {
  @override
  Widget build(BuildContext context) {
    final tiles = saved.map((e) {
      return ListTile(title: Text(e.asPascalCase, style: biggerFont));
    });
    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(tiles: tiles, context: context).toList()
        : <Widget>[];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Saved List Item")
      ),
      body: ListView(
        children: divided,
      )
    );
  }
}
