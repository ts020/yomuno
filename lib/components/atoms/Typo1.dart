import 'package:flutter/widgets.dart';

class Typo1 extends StatelessWidget{
  Typo1(this.text, {this.color, this.direction});
  final String text;
  final Color color;
  final TextDirection direction;

  @override
  Widget build(BuildContext context) {
    return Text(this.text,
        textDirection: this.direction != null ? this.direction : TextDirection.ltr,
        style: TextStyle(fontSize: 16.0, color: this.color != null ? color : Color(0xFF000000))
    );
  }
}