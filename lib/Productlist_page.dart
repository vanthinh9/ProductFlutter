import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/PayPage.dart';
import 'package:test/ProducloginPage.dart';
import 'package:test/ProductCart.dart';
import 'package:test/model/product_model.dart';
import 'package:test/provider/product_provider.dart';

class ProductlistPage extends StatelessWidget {
  ProductlistPage({super.key});
  List<String> Hashlist = [
    "All",
    "electronics",
    "men's clothing",
    "jewelery",
    "women's clothing",
  ];
  var userNameController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty) {
      pp.getList();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Hàng Ladiddi"),
        //titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () => {}),
          //search
          IconButton(
              icon: const Icon(Icons.shopping_cart), onPressed: () => {}),
          //shopping_cart
          IconButton(icon: const Icon(Icons.view_list), onPressed: () => {}),
          //view_list
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Producloginpage()),
                      );
                    },
                    child: Text("Login")),
              ),
              //đăng nhập login
              Container(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.red)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PayPage()),
                      );
                    },
                    child: Text("Thanh Toán")),
              ),
              //Thanh toán paypage
            ]),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 100,
                child: Row(
                  children: [
                    ...pp.list.map((e) {
                      return Container(
                        child: Image.network(e.image.toString(), width: 100),
                      );
                    }).toList()
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red)),
                      onPressed: () {},
                      child: Text("Mã Giảm giá")),
                ),
                //mã giảm giá
                Container(
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.orange)),
                      onPressed: () {},
                      child: Text("Thẻ Nạp")),
                ),
                //Thẻ Nạp
                Container(
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.green)),
                      onPressed: () {},
                      child: Text("Voucher")),
                ),
                //Voucher
                Container(
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.blue)),
                      onPressed: () {},
                      child: Text("Khách hàng Thân Thiết")),
                ),
                //Khách hàng Thân Thiết
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.red)),
                    onPressed: () {},
                    child: Text("Liên Hệ Ngay:")),
              ),
              //Liên Hệ Ngay:
              Container(
                child: IconButton(
                    icon: Icon(
                      Icons.facebook,
                      size: 40,
                      color: Color.fromARGB(255, 79, 33, 243),
                    ),
                    onPressed: () => {}),
              ),
              //facebook
              Container(
                child: IconButton(
                    icon: Icon(
                      Icons.phone,
                      size: 40,
                      color: Colors.red,
                    ),
                    onPressed: () => {}),
              ),
              //phone
              Container(
                child: IconButton(
                    icon: Icon(
                      Icons.email,
                      size: 40,
                      color: Color.fromARGB(255, 244, 54, 133),
                    ),
                    onPressed: () => {}),
              ),
              //email
            ]),

            //...pp.list.map((e){
            //Container(height: 40, child: Text(e.category??""));
            //return Container(
            //  child:
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...Hashlist.map((e) {
                    return Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.all(5),
                      /*decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  e,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),*/
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 187, 243, 33))),
                          onPressed: () {},
                          child: Text(
                            e,
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          )),
                    );
                  }).toList()
                ],
              ),
            ),
            //}),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 3,
                mainAxisSpacing: 2,
                crossAxisCount: 2,
                childAspectRatio: (95 / 90),
                children: [
                  ...pp.list.map((e) {
                    decoration:
                    BoxDecoration(
                        border: Border.all(width: 3, color: Colors.red));
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black)),
                      child: Column(
                        children: [
                          Container(height: 60, child: Text(e.title ?? "")),
                          Container(
                              height: 100,
                              child: Image.network(e.image.toString(),
                                  width: 200)),
                          Container(height: 40, child: Text(e.category ?? "")),
                          /*Container(height: 30, child: */ Text(
                              e.description ?? ""),
                          Text(e.price.toString() + " \$ "),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.blue)),
                                    onPressed: () {},
                                    child: Text("Chi Tiết")),
                              ),
                              //Chi Tiết
                              Container(
                                child: ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Color.fromARGB(
                                                    255, 33, 243, 51))),
                                    onPressed: () {},
                                    child: Text("Số lượng")),
                              ),
                              //Số lượng
                              Container(
                                child: ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.red)),
                                    onPressed: () {
                                      pp.shop = e;
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => name()),
                                      );
                                    },
                                    child: Text("Đặc hàng")),
                              ),
                              //Đặc hàng
                            ],
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.blue,
        icon: Icon(Icons.message),
        label: Text("Mess"),
      ),
    );
  }
}
