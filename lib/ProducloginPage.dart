import 'package:flutter/material.dart';
import 'package:test/ProducRegisterlogin.dart';
import 'package:test/Productlist_page.dart';
import 'package:test/RegisterPage.dart';

class Producloginpage extends StatelessWidget {
 Producloginpage({super.key});
var userNameController =TextEditingController();
var _formKey = GlobalKey<FormState>();
var passController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child:Form( 
        key: _formKey,
        child: Column(
          children: [
            Text("Đăng nhập hệ thống"),
            Image.asset("assets/AnhĐN.png",width: 400,),
            TextFormField(
              controller: userNameController,
              decoration: InputDecoration(
                label: Text("Tên đăng nhập"),
                hintText: "vui lòng đăng nhập tên ",
                border: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.person),
              ),
              validator:(str){
                if(str == null|| str.isEmpty)
                return "Tên đăng nhập không được rỗng";
                return null;
              } ,
            ),
            TextFormField(
              controller: passController,
              decoration: InputDecoration(
                label: Text("Mật Khẩu"),
                hintText:"Vui lòng nhập mật khẩu",
                border: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.key),  
              ),
              validator: (str){
                if(str == null|| str.isEmpty)
                return "Tên Mật khẩu không được bỏ trống";
                return null;
              },
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()){
                var userName = userNameController.text;
                var passwword = passController.text;
                Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Producloginpage()),
                        );
                print("xin chào: ${userName}");
                print("xin chào: ${passwword}");
                }else{
                  print("Dữ liệu không xác định");
                  
                }
              },
              child:
                  Text("Đăng Nhập"),
              ),
            ),
            Container(
              child: ElevatedButton(
                style:const ButtonStyle(
                    backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProducRegisterPage()),
                      );
                    },
                    child: Text("Đăng Ký")
                    ),
               ),
               Container(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductlistPage()),
                      );
                    },
                    child: Text("Quay lại")),
               ),
              ],
            ),
            /*ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()){
                var userName = userNameController.text;
                var passwword = passController.text;
                Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Producloginpage()),
                        );
                print("xin chào: ${userName}");
                print("xin chào: ${passwword}");
                }else{
                  print("Dữ liệu không xác định");
                  
                }
              },
              child:
                  Text("Đăng Nhập"),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style:const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProducRegisterPage()),
                      );
                    },
                    child: Text("Đăng Ký")),
               ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductlistPage()),
                      );
                    },
                    child: Text("Quay lại")),
               ),*/
          ],
        ),  
       ),
      ),
    );
  }
}