import 'package:flutter/material.dart';
import 'package:bmicalc/Colors.dart';

class CalcProvider with ChangeNotifier {
  double _weight = 145.0;
  get weight => _weight;
  double _height = 5.6;
  get height => _height;
  int _age = 25;
  get age => _age;
  double incdecby = 0.1;
  String heightVal = "5.6";
  int selVal = 1;

  void weightIncrement() {
    _weight++;
    notifyListeners();
  }

  void weightDecrement() {
    _weight--;
    notifyListeners();
  }

  void heightIncrement() {
    _height = _height + incdecby;
    heightVal = _height.toStringAsFixed(1);
    notifyListeners();
  }

  void heightDecrement() {
    _height = _height - incdecby;
    heightVal = _height.toStringAsFixed(1);
    notifyListeners();
  }

  void ageIncrement() {
    _age++;
    notifyListeners();
  }

  void ageDecrement() {
    _age--;
    notifyListeners();
  }

  int selUnit = 1;
  int selGender = 0;
  void changeColorStandard() {
    uStandardBackGroundColor = Colors.white;
    uStandardTextColor = Colors.black;
    uMetricTextColor = Colors.white;
    uMetricBackGroundColor = Color(0xFF5F786C);

    notifyListeners();
  }

  void changeColorMetric() {
    uStandardBackGroundColor = Color(0xFF5F786C);
    uStandardTextColor = Colors.white;
    uMetricTextColor = Colors.black;
    uMetricBackGroundColor = Colors.white;
    notifyListeners();
  }

  String weightUnit = 'Weight in pounds';
  String heightUnit = 'Height in feet+inches';

  void changeUnit() {
    if (selVal == 2) {
      weightUnit = 'Weight in kg';
      heightUnit = 'Height in cm';
    } else {
      weightUnit = 'Weight in pounds';
      heightUnit = 'Height in feet+inches';
    }
    notifyListeners();
  }

  void changeVal() {
    if (selVal == 2) {
      _weight = 66;
      _height = 171.0;
      incdecby = 1;
      heightVal = "171.0";
      incdecby = 1;
    } else {
      _weight = 145.0;
      _height = 5.6;
      heightVal = "5.6";
      incdecby = 0.1;
    }
    notifyListeners();
  }

  void changeColorMale() {
    pMalebackGroundColor = Colors.white;
    pMaleIconColor = Color(0xFF375748);
    pMaleTextColor = Colors.black;
    pFemalebackGroundColor = Color(0xFF5F786C);
    pFemaleIconColor = Color(0xFF375748);
    pFemaleTextColor = Colors.black;
    notifyListeners();
  }

  void changeColorFemale() {
    pMalebackGroundColor = Color(0xFF5F786C);
    pMaleIconColor = Color(0xFF375748);
    pMaleTextColor = Colors.black;
    pFemalebackGroundColor = Colors.white;
    pFemaleIconColor = Color(0xFF375748);
    pFemaleTextColor = Colors.black;
    notifyListeners();
  }

  String finalResult = "";
  void calculateBmi(
      {int unitVal, int genVal, int age, double height, double weight}) {
    if (unitVal == 2) {
      finalResult = ((weight / height / height) * 10000).toStringAsFixed(1);
    } else {
      double calcHeight = (height * 12);
      print(calcHeight);
      finalResult =
          (703 * weight / (calcHeight * calcHeight)).toStringAsFixed(1);
    }
    if (double.parse(finalResult) < 16) {
      first = Colors.greenAccent;
      second =
          third = fourth = fifth = sixth = seventh = eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 16 &&
        double.parse(finalResult) <= 17) {
      second = Colors.greenAccent;
      first =
          third = fourth = fifth = sixth = seventh = eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) > 17 &&
        double.parse(finalResult) < 18.5) {
      third = Colors.greenAccent;
      first = second =
          fourth = fifth = sixth = seventh = eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 18.5 &&
        double.parse(finalResult) < 25) {
      fourth = Colors.greenAccent;
      first =
          second = third = fifth = sixth = seventh = eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 25 &&
        double.parse(finalResult) < 30) {
      fifth = Colors.greenAccent;
      first = second =
          third = fourth = sixth = seventh = eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 30 &&
        double.parse(finalResult) < 35) {
      sixth = Colors.greenAccent;
      first = second =
          third = fourth = fifth = seventh = eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 35 &&
        double.parse(finalResult) <= 40) {
      seventh = Colors.greenAccent;
      first =
          second = third = fourth = fifth = sixth = eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) > 40) {
      eighth = Colors.greenAccent;
      first =
          second = third = fourth = fifth = sixth = seventh = Color(0xFF5F786C);
    }
  }
}
