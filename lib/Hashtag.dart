import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Hashtag extends StatelessWidget {
   Hashtag({super.key});
   List<String> Hashlist=[
    "#Đại nội",
    "#Du lịch",
    "#Ẩm thực",
    "#Huế",
    "#Kết nối",
    "#Sông hương",
   ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      /*child: Row(children: [
        for (int i = 0; i < Hashlist.length; i++)
          Container(
            child: Text(Hashlist[i]),
            margin: EdgeInsetsDirectional.all(8),
          ),
      ]),*/
      child: Row(
        children: [
          ...Hashlist.map((e){
            return Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                e,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}