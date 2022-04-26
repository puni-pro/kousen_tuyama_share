import 'package:flutter/material.dart';
import 'package:kousen_tuyama_share/paper.dart';

class PastPaper extends StatefulWidget {

  const PastPaper({Key? key}) : super(key: key);

  @override
  State<PastPaper> createState() => _PastPaperState();
}

class _PastPaperState extends State<PastPaper> {
  var years = ["1年生","2年生","3年生","4年生","5年生"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("過去問"),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Paper(years[0]),
                      ),);

                  },
                  child: Text(years[0]),
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
                        builder: (context) => Paper(years[1]),
                      ),);
                  },
                  child: Text(years[1]),
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
                        builder: (context) => Paper(years[2]),
                      ),);


                  },
                  child: Text(years[2]),
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
                        builder: (context) => Paper(years[3]),
                      ),);

                  },
                  child: Text(years[3]),
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
                        builder: (context) => Paper(years[4]),
                      ),);

                  },
                  child: Text(years[4]),
                ),
              ),
              const Spacer(flex: 1),


            ],
          ),
        )
    );
  }
}