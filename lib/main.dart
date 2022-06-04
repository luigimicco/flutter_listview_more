import 'package:flutter/material.dart';
import 'pages/listviewpage.dart';

void main() {
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Listview Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListViewPage(title: 'Flutter Listview Demo'),
    );
  }
}
