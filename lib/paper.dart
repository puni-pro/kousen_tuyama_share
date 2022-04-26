
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Paper extends StatelessWidget{
  Paper(this.year, {Key? key}) : super(key: key);
  String year;


  //SQl
  List<String> items = ["教科１","教科2","教科3","教科4"];

  @override
  Widget build(BuildContext context) {
    // UIの部分はここに書く。　
    return Scaffold(
      appBar:AppBar(
        title: Text(year),
      ),
      body:ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return SizedBox(
            child: ElevatedButton(

              child: Text(
                items[index],
                style: const TextStyle(
                  color: Colors.black,
                ),),
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white, //ボタンの背景色
              ),

            ),
          );
        },
      ),

    );
  }

}
