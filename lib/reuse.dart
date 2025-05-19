import 'package:flutter/cupertino.dart';

class Reuse extends StatelessWidget {
  Reuse({super.key, required this.colors, required this.cardChild});
  Color colors;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
