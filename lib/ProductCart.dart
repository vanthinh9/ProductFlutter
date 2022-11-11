import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/provider/product_provider.dart';

class name extends StatelessWidget {
  name({super.key});

  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty) {
      pp.getList();
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Hàng đã chọn",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellowAccent,
        ),
        body: Center(
          child: Container(
            decoration:
                BoxDecoration(border: Border.all(width: 4, color: Colors.blue)),
            child: Column(
              children: [
                Text(pp.shop.title.toString()),
                Image.network(
                  pp.shop.image.toString(),
                  width: 220,
                )
              ],
            ),
          ),
        ));
  }
}
