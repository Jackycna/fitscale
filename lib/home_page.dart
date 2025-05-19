import 'package:fitscale/constant.dart';
import 'package:fitscale/reuse.dart';
import 'package:fitscale/round_button.dart';
import 'package:fitscale/second_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int heightslide = 120;
  int age = 20;
  int weightis = 30;
  Color maleColor = Color(0xFF131145);
  Color femaleColor = Color(0xFF131145);
  void selectGender(bool gender) {
    if (gender) {
      setState(() {
        maleColor = Constant.darkBlieColor;
        femaleColor = Color(0xFF131145);
      });
    } else {
      setState(() {
        femaleColor = Constant.darkBlieColor;
        maleColor = Color(0xFF131145);
      });
    }
  }

  addAge(bool Agee) {
    if (Agee) {
      setState(() {
        age++;
      });
    } else {
      setState(() {
        age--;
      });
    }
  }

  addweight(bool weigh) {
    if (weigh) {
      setState(() {
        weightis++;
      });
    } else {
      setState(() {
        weightis--;
      });
    }
  }

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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectGender(true);
                      },
                      child: Reuse(
                        colors: maleColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/images-removebg-preview.png',
                              height: 120,
                              width: 120,
                            ),
                            SizedBox(height: 10),
                            Text('Male', style: Constant.textStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectGender(false);
                      },
                      child: Reuse(
                        colors: femaleColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/women-removebg-preview.png',
                              height: 120,
                              width: 120,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Reuse(
                colors: Constant.backgroundColor,
                cardChild: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text("Height", style: Constant.textStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('${heightslide}', style: Constant.textStyle),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('cm', style: Constant.textStyle),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.white,
                        inactiveColor: Constant.blueColor,
                        thumbColor: Colors.red,
                        min: 120,
                        max: 240,
                        value: heightslide.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            heightslide = value.toInt();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reuse(
                      colors: Constant.backgroundColor,
                      cardChild: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('Age', style: Constant.textStyle),
                            Text('${age}', style: Constant.textStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RoundButton(
                                    icon: FontAwesomeIcons.minus,
                                    onpressed: () {
                                      setState(() {
                                        addAge(false);
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RoundButton(
                                    icon: Icons.add,
                                    onpressed: () {
                                      setState(() {
                                        addAge(true);
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Reuse(
                      colors: Constant.backgroundColor,
                      cardChild: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('Weight', style: Constant.textStyle),
                            Text('${weightis}', style: Constant.textStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RoundButton(
                                    icon: FontAwesomeIcons.minus,
                                    onpressed: () {
                                      setState(() {
                                        addweight(false);
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RoundButton(
                                    icon: Icons.add,
                                    onpressed: () {
                                      setState(() {
                                        addweight(true);
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Material(
              elevation: 10,
              child: GestureDetector(
                onTap: () {
                  bmicalculate();
                },
                child: Container(
                  margin: EdgeInsets.all(10),
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  bmicalculate() {
    var heighm = heightslide / 100;
    var result = (weightis / (heighm * heighm)).toInt();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage(result: result)),
    );
  }
}
