import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:test/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier{
  List<ProductModel> list = [];
  void getList() async{
    String apiURP= "https://fakestoreapi.com/products";
    var client = http.Client();
    var rs = await client.get(Uri.parse(apiURP));
    var jsonString = rs.body;
    var jsonObject = jsonDecode(jsonString) as List;
    list = jsonObject.map((e){
      return ProductModel.fromJson(e);
    }).toList();
    notifyListeners();
  }
}