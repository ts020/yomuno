
import 'package:flutter/widgets.dart';
import 'package:yomuno/components/atoms/Typo1.dart';
import 'package:yomuno/components/atoms/Colors.dart';
import 'package:yomuno/components/organims/TopList.dart';
import 'package:yomuno/repository/fetchBook.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: FutureBuilder(
          future: fetchBook(),
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return TopList(snapshot.data);
            } else {
              return Typo1("${snapshot.error}", color: Colors.red);
            }
          },
        )
      )
    );
  }
}