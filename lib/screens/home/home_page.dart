import 'dart:math';

import 'package:demirbank/core/data/card_data.dart';
import 'package:demirbank/models/card_info_model.dart';
import 'package:demirbank/models/owner_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: CardData.cards
            .map((element) => Container(
                  height: 240,
                  width: 380,
                  color: Colors.grey,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    children: [Text(element.number.toString())],
                  ),
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCArd,
      ),
    );
  }

  void _addCArd() {
    int rand = Random().nextInt(1000);
    CardInfoModel card = CardInfoModel(
        'bank', rand.toString(), 'expireDate', OwnerModel(), 'type');
    CardData.cards.add(card);

    setState(() {});
  }
}
