import 'package:flutter/material.dart';
import '../models/item.dart';
import '../components/carditem.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key, required this.itemsList}) : super(key: key);
  final List<Item> itemsList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<CardItem> _buildList() {
    return itemsList.map((item) => CardItem(item: item)).toList();
  }
}
