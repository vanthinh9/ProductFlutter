import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
 Homepage({super.key});
String src= "https://images.unsplash.com/photo-1661961110671-77b71b929d52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Application- G4"),
        titleTextStyle: TextStyle(color: Colors.orange, fontSize: 30),
      ),
      body: Center(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Text("Xin chao",
              style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  )
                  ),
              Text("chao mung toi voi nhom 4",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.red,
                  )),
                  Image.network(src),
                  Image.asset("assets/Goku4.jpg"),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 40,
                        color: Colors.red,
                        ),
                        Icon(
                        Icons.star,
                        size: 40,
                        color: Colors.red,
                        ),
                        Icon(
                        Icons.star,
                        size: 40,
                        color: Colors.red,
                        ),
                        Icon(
                        Icons.star,
                        size: 40,
                        color: Colors.red,
                        ),
                        Icon(
                        Icons.star,
                        size: 40,
                        color: Colors.blue,
                        ),
                        Text(
                          "200 ratings",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}