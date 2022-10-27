import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/login_page.dart';

class RegisterPage extends StatelessWidget {
RegisterPage({super.key});
var userNameController =TextEditingController();
var passController =TextEditingController();
var emailController =TextEditingController();
var sdtController =TextEditingController();
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
            Image.asset("assets/B10.jpg"),
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
              controller: emailController,
              decoration: InputDecoration(
                label: Text("Email"),
                hintText:"Vui lòng nhập Email",
                border: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.mail),  
              ),
              validator: (str){
                if(str == null|| str.isEmpty)
                return "Không được bỏ trống email";
                return null;
              },
            ),
            //Email
            TextFormField(
              controller: sdtController,
              decoration: InputDecoration(
                label: Text("Số điện thoại"),
                hintText:"Vui lòng nhập số điện thoại",
                border: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.phone),  
              ),
              validator: (str){
                if(str == null|| str.isEmpty)
                return "không được bỏ trống số điện thoại";
                return null;
              },
            ),
            //sdt
            ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()){
                var userName = userNameController.text;
                var passwword = passController.text;
                var email = emailController.text;
                var sdt = sdtController.text;
                print("Tên đăng nhập: ${userName}");
                print("Mật khẩu: ${passwword}");
                print("Email: ${email}");
                print("SĐT: ${sdt}");
                }else{
                  print("Dữ liệu không xác định");
                  
                }
              },
              child:
              Text("Đăng ký"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginpage()),
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