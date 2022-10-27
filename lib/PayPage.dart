import 'package:flutter/material.dart';
import 'package:test/Productlist_page.dart';

class PayPage extends StatelessWidget {
PayPage({super.key});
var userNameController =TextEditingController();
var passController =TextEditingController();
var tienController =TextEditingController();
var STKController =TextEditingController();
var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child:Form( 
        key: _formKey,
        child: Column(
          children: [
            Text("Đăng ký hệ thống"),
            Image.asset("assets/BITV.jpg", width:300,),
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
            //tên đăng nhập
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
            //Mật khẩu
            TextFormField(
              controller: tienController,
              decoration: InputDecoration(
                label: Text("Số tiền"),
                hintText:"Vui lòng nhập ",
                border: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.mail),  
              ),
              validator: (str){
                if(str == null|| str.isEmpty)
                return "Không được bỏ trống";
                return null;
              },
            ),
            //Email//Số tiền
            TextFormField(
              controller: STKController,
              decoration: InputDecoration(
                label: Text("Số tài khoản"),
                hintText:"Vui lòng nhập số tài khoản",
                border: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
                ),
                //prefixIcon: Icon(Icons.banking),  
              ),
              validator: (str){
                if(str == null|| str.isEmpty)
                return "không được bỏ trống số tài khoảng";
                return null;
              },
            ),
            //sdt
            ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()){
                var userName = userNameController.text;
                var passwword = passController.text;
                var tien = tienController.text;
                var stk = STKController.text;
                print("Tên đăng nhập: ${userName}");
                print("Mật khẩu: ${passwword}");
                print("Số tiền: ${tien}");
                print("SĐT: ${stk}");
                }else{
                  print("Dữ liệu không xác định");
                  
                }
              },
              child:
              Text("Thanh toán"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductlistPage()),
                      );
                    },
                    child: Text("Quay lại")),
              )
          ],
        ),
       ),
      ),
    );
  }
}