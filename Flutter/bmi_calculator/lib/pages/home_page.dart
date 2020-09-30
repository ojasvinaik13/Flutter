import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/custom_card.dart';
import 'package:bmi_calculator/components/custom_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: CustomCard(
                onClick: () {},
                colour: activeCardColour,
                childCard: IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
              )),
              Expanded(
                  child: CustomCard(
                onClick: () {
                  setState(() {
                    // gender = Gender.f
                  });
                },
                colour: activeCardColour,
                childCard: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'FEMALE',
                ),
              )),
            ]),
          ),
          Expanded(
            child: CustomCard(
              colour: inactiveCardColour,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: labelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "134",
                        style: numberStyle,
                      ),
                      Text(
                        'cm',
                        style: labelStyle,
                      )
                    ],
                  ),
                  // SliderTheme(data: null, child: null)
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: CustomCard(colour: activeCardColour)),
              Expanded(child: CustomCard(colour: activeCardColour))
            ],
          )),
        ],
      ),
    );
  }
}
