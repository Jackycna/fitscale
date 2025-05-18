import 'package:flutter/cupertino.dart';

class Reuse extends StatelessWidget {
  Reuse({super.key, required this.colors});
  Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(15),
      ),

      // margin: EdgeInsets.all(10),
    );
  }
}
