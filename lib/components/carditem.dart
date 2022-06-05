import 'package:flutter/material.dart';
import '../models/item.dart';
import '../components/circleimage.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        color: Color.fromARGB(255, 244, 228, 180),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleImage(
                  imageProvider: NetworkImage(item.image), imageRadius: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${item.firstName} ${item.lastName}',
                        style: const TextStyle(fontWeight: FontWeight.w700)),
                    Text(
                      item.email,
                    ),
                  ],
                ),
              ),
              IconButton(
                  // 4
                  icon: const Icon(Icons.favorite_border),
                  iconSize: 30,
                  color: Colors.grey[400],
                  // 5
                  onPressed: () {
                    const snackBar =
                        SnackBar(content: Text('Favorite Pressed'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
