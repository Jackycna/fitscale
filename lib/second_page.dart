import 'package:fitscale/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final int result;
  const SecondPage({super.key, required this.result});

  @override
  State<SecondPage> createState() => _MyWidgetState();
}

@override
class _MyWidgetState extends State<SecondPage> {
  var bmiText = 'Normal';
  var bmiPath = 'normal';
  @override
  void initState() {
    super.initState();
    updateui();
  }

  void updateui() {
    var bmi = widget.result;
    if (bmi < 18) {
      setState(() {
        bmiText = 'UnderWeight';
        bmiPath = 'underweight';
      });
    } else if (bmi >= 18 && bmi < 24) {
      setState(() {
        bmiText = 'normal';
        bmiPath = 'normal';
      });
    } else if (bmi >= 24 && bmi < 30) {
      setState(() {
        bmiText = 'Risk to over weight';
        bmiPath = 'risk';
      });
    } else if (bmi >= 30 && bmi < 35) {
      setState(() {
        bmiText = 'OverWeight';
        bmiPath = 'overweight';
      });
    } else if (bmi >= 35 && bmi < 41) {
      setState(() {
        bmiText = 'obese';
        bmiPath = 'obese';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
        ),
        title: Center(child: Text('Result', style: Constant.textStyle)),
        backgroundColor: Constant.backgroundColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              borderRadius: BorderRadius.circular(30),
              elevation: 2,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Constant.backgroundColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Your BMI value is",
                          style: Constant.textStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${widget.result}',
                          style: Constant.textStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('${bmiText}', style: Constant.textStyle),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Image.asset('assets/images/${bmiPath}.jpeg', height: 400, width: 400),
        ],
      ),
    );
  }
}
