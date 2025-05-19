import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.icon, required this.onpressed});
  final IconData icon;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      constraints: BoxConstraints(minWidth: 56, minHeight: 56),
      shape: CircleBorder(),
      elevation: 10,

      fillColor: Colors.white,
      child: Center(child: Icon(icon)),
    );
  }
}
