import 'package:fitscale/constant.dart';
import 'package:fitscale/reuse.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.check_circle, color: Colors.white, size: 35),
        title: Text(
          'FITSCALE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Constant.backgroundColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Reuse(colors: Colors.black)),
                  Expanded(child: Reuse(colors: Constant.backgroundColor)),
                ],
              ),
            ),
            Expanded(child: Reuse(colors: Constant.backgroundColor)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Reuse(colors: Constant.backgroundColor)),
                  Expanded(child: Reuse(colors: Constant.backgroundColor)),
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Calculate BMI',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
