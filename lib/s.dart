import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        title: const Text(
          'Review',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1),
            const Text(
              "【投票】ほしい機能はどれですか？",
            ),
            const Text(
              "                                                               ",
              style: TextStyle(
                decoration: TextDecoration.overline,
              ),
            ),
            Row(
              children: <Widget>[
                const Spacer(flex: 1),
                SizedBox(
                  width: 100, //横幅
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {


                      },
                      child:Column(
                          children:const [
                            Spacer(flex: 1),
                            Icon(Icons.article),
                            Text('ニュース'),
                            Text("0"),
                            Spacer(flex: 1),
                          ]
                      )
                  ),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: 100, //横幅
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Column(
                          children:const [
                            Spacer(flex: 1),
                            Icon(Icons.access_time),
                            Text('タイマー'),
                            Text("0"),

                            Spacer(flex: 1),
                          ]
                      )

                  ),


                ),

                const Spacer(flex: 1),
              ],
            ),




            const Spacer(flex: 5),


          ],
        ),



      ),

    );
  }
}