import 'package:flutter/material.dart';

import 'FruitDataModel.dart';

class FruitDetail extends StatelessWidget {
  final FruitDataModel fruitDataModel;

  const FruitDetail({Key? key, required this.fruitDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(fruitDataModel.name),),
      body: Column(
        children: [
          Image.network(fruitDataModel.ImageUrl),
          SizedBox(
            height: 10,
          ),
          Text(fruitDataModel.desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }
}