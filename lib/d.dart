import 'package:flutter/material.dart';
import 'package:kousen_tuyama_share/star.dart';


import 'lecture.dart';
import 'pastpaper.dart';

class CloudScreen extends StatelessWidget {
  const CloudScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        // Appbar
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: const Text(
            'Cloud',
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: Center(
            child: Column(
              children: <Widget>[
                const Spacer(flex: 1),
                SizedBox(
                  width: 200, //横幅
                  height: 100, //高さ
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PastPaper(),
                        ),);
                    },
                    child: const Text('過去問'),
                  ),
                ),
                const Spacer(flex: 1),

                SizedBox(
                  width: 200, //横幅
                  height: 100, //高さ
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LectureMaterial(),
                        ),);
                    },
                    child: const Text('講義資料'),
                  ),
                ),
                const Spacer(flex: 3),
                Row(
                  children: <Widget>[
                    const Spacer(flex: 1),
                    SizedBox(
                      width: 200, //横幅
                      height: 100,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Star(),
                              ),);

                          },
                          child: Column(
                              children: const [
                                Spacer(flex: 1),
                                Icon(Icons.grade,),
                                Text('スター付き'),
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
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                child: Center(
                                  child: Column(
                                    children: [
                                      const Text("過去問・講義資料をアップロード",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),),
                                      Card(
                                        child: ListTile(
                                          leading: const Icon(
                                              Icons.photo_library),
                                          title: const Text("アルバムから選択"),
                                          trailing: const Icon(
                                              Icons.chevron_right),
                                          onTap: () {},
                                        ),
                                      ),
                                      Card(
                                        child: ListTile(
                                          leading: const Icon(
                                              Icons.photo_camera),
                                          title: const Text("写真を撮る"),
                                          trailing: const Icon(
                                              Icons.chevron_right),
                                          onTap: () {},

                                        ),
                                      ),
                                      Card(
                                        child: ListTile(
                                          leading: const Icon(
                                              Icons.folder_open),
                                          title: const Text("複数以上のファイル"),
                                          trailing: const Icon(
                                              Icons.chevron_right),
                                          onTap: () {},

                                        ),
                                      ),
                                      Card(
                                        child: ListTile(
                                          leading: const Icon(
                                              Icons.insert_link),
                                          title: const Text("ドライブなどのURL"),
                                          trailing: const Icon(
                                              Icons.chevron_right),
                                          onTap: () {},

                                        ),
                                      ),


                                      const Text(
                                          "            未来の後輩のために\nどんどんアップロードしましょう！！"),
                                      const Spacer(flex: 1),
                                    ],
                                  ),
                                ),
                                height: 450,
                                alignment: Alignment.center,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 20,
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: const Icon(Icons.file_upload, size: 50,

                        ),
                      ),

                    ),

                    const Spacer(flex: 1),
                  ],
                ),
                const Spacer(flex: 3),

              ],
            )
        )
    );
  }
}