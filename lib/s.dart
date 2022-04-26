import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreen createState() => _NewsScreen();
}

class _NewsScreen extends State<NewsScreen>{


  late var _counters = [0,0];

  List _includeCounter(List _counters ,int i){
    setState(() {
      _counters[i]++;
    });


    return _counters;
  }



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
                        _includeCounter(_counters, 0);


                      },
                      child:Column(
                          children:[
                            const Spacer(flex: 1),
                            const Icon(Icons.article),
                            const Text('ニュース'),
                            Text(_counters[0].toString()),
                            const Spacer(flex: 1),
                          ]
                      )
                  ),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: 100, //横幅
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        _includeCounter(_counters, 1);
                      },
                      child: Column(
                          children:[
                            const Spacer(flex: 1),
                            const Icon(Icons.access_time),
                            const Text('タイマー'),
                            Text(_counters[1].toString()),

                            const Spacer(flex: 1),
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