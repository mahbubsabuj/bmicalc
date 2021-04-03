import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalc/Hompage.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF375748),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 40.0, left: 20.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, color: Color(0xFF8C938E)),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Go Back',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSansR'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF5F786C)
              ),
              
              margin: const EdgeInsets.only(left: 30.0, right: 30.0),
              height: 1750,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  
                  
                  children: <Widget>[
                    Text(
                      'Your body  mass index—or BMI—is a number that shows roughly how much mass you have per inch of height. It’s calculated by taking your weight in pounds multiplied 703 divided by your height squared in inches. A healthy BMI is generally somewhere between 19 and 25, though for some people it might be a bit higher, depending on muscle density, body type, and so forth.',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: 'OpenSansR'),
                    ),
                    SizedBox(height: 6.0,),
                    Text(
                     'If you’re at a healthy BMI, how do you stay there? Listed are few Tips for maintaining a healthy BMI',style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSansL'),
                    ),
                     SizedBox(height: 8.0,),
                     
                    ListTile(
                      leading: Icon(FontAwesomeIcons.solidDotCircle),
                      title:   Text(
                      'Get—and stay—active:',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSansR'),
                          
                    ),
                    subtitle: Text(
                      'Exercise sounds unpleasant, but it’s a crucial part of maintaining a healthy BMI. It doesn’t necessarily have to be miserable either. If you can find a sport or vigorous outdoor activity you enjoy doing, it will be much easier to keep your body mass down.',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          
                          fontFamily: 'OpenSansR'),
                          
                    ),
                    
                    ),
                     SizedBox(height: 8.0,),
                     
                    ListTile(
                      leading: Icon(FontAwesomeIcons.solidDotCircle),
                      title:   Text(
                      'Avoid random snacking:',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSansR'),
                          
                    ),
                    subtitle: Text(
                      'Random snacking throughout the day, or grazing, is a major culprit for weight gain. Limit eating to set mealtimes, and control portion sizes. It helps to eliminate snack foods from your home so that the temptation isn’t there.', style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          
                          fontFamily: 'OpenSansR'),
                          
                    ),
                    
                    ),
                    SizedBox(height: 8.0,),
                     
                    ListTile(
                      leading: Icon(FontAwesomeIcons.solidDotCircle),
                      title:   Text(
                      'Cut out high calorie drinks:',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSansR'),
                          
                    ),
                    subtitle: Text(
                      'Drinks that are high in sugar or calories are another major cause of weight gain. Keep these beverages to a minimum, and drink more water. This will not only help maintain your BMI, but it will keep you better hydrated as well since many high-calorie drinks actually dehydrate you.', style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          
                          fontFamily: 'OpenSansR'),
                          
                    ),
                    
                    ),
                    SizedBox(height: 8.0,),
                     
                    ListTile(
                      leading: Icon(FontAwesomeIcons.solidDotCircle),
                      title:   Text(
                      'Eat healthy:',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSansR'),
                          
                    ),
                    subtitle: Text(
                      'Eating healthy food and cutting out junk sounds hard, but there are many recipes out there that allow you to eat healthily without any hassle. Increase fruit and vegetable intake, decrease harmful fats, and you’ll be able to maintain your BMI while also enjoying more energy and better organ function.', style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          
                          fontFamily: 'OpenSansR'),
                          
                    ),
                    
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.0,),
           Center(
            child: GestureDetector(
              onTap: () {
                
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Homepage()));
              },
              child: Container(
                width: 200.0,
                height: 45.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF5F786C),
                ),
                child: Text(
                  'Recalculate',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: 'OpenSansR'),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}
