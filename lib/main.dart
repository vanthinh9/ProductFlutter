import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/Classrom.dart';
import 'package:test/Productlist_page.dart';
import 'package:test/RegisterPage.dart';
import 'package:test/destination.dart';
import 'package:test/hompage.dart';
import 'package:test/login_page.dart';
import 'package:test/provider/product_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ProductProvider())],
    child: MaterialApp(
      home: ProductlistPage(),
    ),
  ));
}
 /*home: Homepage(),*/
   //home: Destination(),
   //home: NhomLop(),
   //home: loginpage(),