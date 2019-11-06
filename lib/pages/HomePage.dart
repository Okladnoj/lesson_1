import 'package:flutter/material.dart';
import 'package:lesson_1/models/list_item.dart';
import 'package:lesson_1/pages/main_pag.dart';

class MyHomePageState extends State<MyHomePage> {
  static int _count = 0;
  var listitem = new ModelItems(imax: _count).listitem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: listitem.length,
          itemBuilder: (BuildContext contex, int index) {
            return Container(
              height: 50,
              color: Colors.purple[(index % 2) == 0 ? 300 : 200],
              child: Center(child: Text(listitem[index])),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() => _count++),
          tooltip: 'add Item',
          child: const Icon(Icons.add_alert),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}
