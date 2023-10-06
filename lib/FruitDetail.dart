import 'package:flutter/material.dart';

import 'FruitDataModel.dart';

class FruitDetail extends StatelessWidget {
  final FruitDataModel fruitDataModel;

  const FruitDetail({Key? key, required this.fruitDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(fruitDataModel.name),),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,50,0,0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(fruitDataModel.ImageUrl)
              ),
              //below line is used for network Image
              // Image.network(fruitDataModel.ImageUrl),
              SizedBox(
                height: 10,
              ),
              Text(fruitDataModel.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text(fruitDataModel.desc,style: TextStyle(fontSize: 15,color: Colors.grey),),
            ],
          ),
        ),
      ),
    );
  }
}