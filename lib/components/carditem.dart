import 'package:flutter/material.dart';
import '../models/item.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          child: Text(item.firstName[0] + item.lastName[0]),
        ),
        title: Text("${item.firstName} ${item.lastName}"),
        subtitle: Text(item.email));
  }
}
