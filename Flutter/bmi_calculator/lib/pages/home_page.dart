import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/custom_card.dart';

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
            child: Row(
              children:<Widget>[
                Expanded(
                  child: CustomCard(
                    onPress: (){},
                    colour: activeCardColour,
                  )
                  ),
                  Expanded(
                  child: CustomCard(
                    onPress: (){},
                    colour: activeCardColour,
                  )
                  ),
              ]
            ),
            ),
            Expanded(
              child: CustomCard(
                colour: activeCardColour,
              ),
            ),
            Expanded(
              child:Row(
                children: <Widget>[
                  Expanded(child: CustomCard(colour: activeCardColour)),
                  Expanded(child: CustomCard(colour: activeCardColour))
                ],)
            ),
        ],
      ),
    );
  }
}