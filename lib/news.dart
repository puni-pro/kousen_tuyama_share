
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        // Appbar
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: Center(
            child:Column(
              children: [
                const Text("最新ニュース"),
                IconButton(
                  icon: const Icon(Icons.share),
                  // シェアボタンをクリックしたときに呼ばれる処理
                  onPressed: () => _share(),
                ),

              ],
            )

        )
    );
  }
}

void _share() => Share.share('共有するテキスト\nアプリテスト');