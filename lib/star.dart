import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Star extends StatelessWidget{

  //SQl
  List<String> staritems = ["s教科１","s教科2","s教科3","s教科4"];
  @override
  Widget build(BuildContext context) {
    // UIの部分はここに書く。　
    return Scaffold(
      appBar:AppBar(
        title: const Text("Star"),
      ),
      body: ListView.builder(
        itemCount: staritems.length,
        itemBuilder: (context, index) {
          return SizedBox(
            child: ElevatedButton(

              child: Text(
                staritems[index],
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
