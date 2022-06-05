import 'package:flutter/material.dart';
import '../models/item.dart';
import '../components/circleimage.dart';

class CardItem extends StatefulWidget {
  const CardItem({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
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
                  imageProvider: NetworkImage(widget.item.image),
                  imageRadius: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${widget.item.firstName} ${widget.item.lastName}',
                        style: const TextStyle(fontWeight: FontWeight.w700)),
                    Text(
                      widget.item.email,
                    ),
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(
                      _isFavorited ? Icons.favorite : Icons.favorite_border),
                  iconSize: 30,
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      _isFavorited = !_isFavorited;
                    });
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
