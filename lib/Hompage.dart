import './provider/calcProvider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import './screens/ResultPage.dart';
import './widgets/UnitButtons.dart';
import 'Colors.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CalcProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xFF375748),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text(
                  'Calculate Your',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontFamily: 'OpenSansR'),
                ),
                Text(
                  'Body Mass Index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontFamily: 'OpenSansR'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  provider.selVal = 1;
                  provider.changeColorStandard();
                  provider.changeUnit();
                  provider.changeVal();
                },
                child: Container(
                  width: 180.0,
                  height: 43.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: uStandardBackGroundColor,
                  ),
                  child: Text(
                    'Standard',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: uStandardTextColor,
                        fontFamily: 'OpenSansR'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                   provider.selVal = 2;
                  provider.changeColorMetric();
                  provider.changeUnit();
                  provider.changeVal();
                },
                child: Container(
                  width: 180.0,
                  height: 43.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: uMetricBackGroundColor,
                  ),
                  child: Text(
                    'Metric',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: uMetricTextColor,
                        fontFamily: 'OpenSansR'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  provider.selGender = 1;
                 provider.changeColorMale();
                },
                child: Container(
                  width: 180.0,
                  height: 140.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: pMalebackGroundColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.male,
                        size: 70.0,
                        color: pMaleIconColor,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: pMaleTextColor,
                            fontFamily: 'OpenSansR'),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  provider.selGender = 2;
                  provider.changeColorFemale();
                },
                child: Container(
                  width: 180.0,
                  height: 140.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: pFemalebackGroundColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.female,
                        size: 70.0,
                        color: pFemaleIconColor,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: pFemaleTextColor,
                            fontFamily: 'OpenSansR'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          UnitButtons(
            decrement: () => provider.weightDecrement(),
            increment: () => provider.weightIncrement(),
            unitName: provider.weightUnit,
            unitVal: provider.weight,
          ),
          SizedBox(
            height: 25.0,
          ),
          UnitButtons(
            decrement: () => provider.heightDecrement(),
            increment: () => provider.heightIncrement(),
            unitName: provider.heightUnit,
            unitVal: provider.heightVal,
          ),
          SizedBox(
            height: 25.0,
          ),
           UnitButtons(
            decrement: () => provider.ageDecrement(),
            increment: () => provider.ageIncrement(),
            unitName: 'Age',
            unitVal: provider.age,
          ),
          SizedBox(
            height: 25.0,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                provider.calculateBmi(
                  age: provider.age,
                  genVal: provider.selGender,
                  height: provider.height,
                  weight: provider.weight,
                  unitVal: provider.selVal
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ResultPage(provider.finalResult)));
              },
              child: Container(
                width: 200.0,
                height: 65.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF375748),
                      fontFamily: 'OpenSansR'),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

