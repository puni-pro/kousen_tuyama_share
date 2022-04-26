import 'package:flutter/material.dart';

class LectureMaterial extends StatelessWidget {
  const LectureMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("講義資料"),
        ),
        body:Center(
          child: Column(
            children: [
              const Spacer(flex: 1),
              SizedBox(
                width: 200, //横幅
                height: 100, //高さ
                child: ElevatedButton(
                  onPressed: () {


                  },
                  child: const Text('1年生'),
                ),
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: 200, //横幅
                height: 100, //高さ
                child: ElevatedButton(
                  onPressed: () {


                  },
                  child: const Text('2年生'),
                ),
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: 200, //横幅
                height: 100, //高さ
                child: ElevatedButton(
                  onPressed: () {


                  },
                  child: const Text('3年生'),
                ),
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: 200, //横幅
                height: 100, //高さ
                child: ElevatedButton(
                  onPressed: () {


                  },
                  child: const Text('4年生'),
                ),
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: 200, //横幅
                height: 100, //高さ
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: const Text('5年生'),
                ),
              ),
              const Spacer(flex: 1),


            ],
          ),
        )
    );
  }
}