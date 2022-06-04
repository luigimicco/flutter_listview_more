import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import './listitems.dart';
import '../models/item.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key, required this.title}) : super(key: key);
  final String title;

  _buildTestData() {
    List<Item> itemTestData = [];

    var faker = Faker();
    for (int i = 0; i < 20; i++) {
      itemTestData.add(Item(
          firstName: faker.person.firstName(),
          lastName: faker.person.lastName(),
          email: faker.internet.email()));
    }
    return itemTestData;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //5
        home: Scaffold(
      //6
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListItems(itemsList: _buildTestData()),
    ));
  }
}
