import 'package:flutter/material.dart';
import '../models/item.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // 2
          CircleAvatar(
            backgroundImage: NetworkImage(item.image),
            radius: 20,
          ),
          // 3
          const SizedBox(width: 16),
          // 4
          Expanded(
            // 5
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 6
                Text('${item.firstName} ${item.lastName}',
                    style: const TextStyle(fontWeight: FontWeight.w700)),
                // 7
                Text(
                  item.email,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
