import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalc/Colors.dart';
import 'TipsPage.dart';

class ResultPage extends StatelessWidget {
  final finalResult;
  ResultPage(this.finalResult);
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
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Result',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35.0, color: Colors.white, fontFamily: 'OpenSansR'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  color: Color(0xFF5F786C),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Your Current BMI:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28.0,
                          color: Color(0xFFCFD7D3),
                          fontFamily: 'OpenSansR'),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '$finalResult',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50.0,
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'OpenSansR',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: Color(0xFF5F786C),
                height: 450.0,
                width: 250.0,
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: first,
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.squareFull,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        title: Text('Severe Thinness'),
                        trailing: Text('< 16'),
                      ),
                    ),
                    Container(
                      color: second,
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.squareFull,
                          color: Colors.blue,
                          size: 20.0,
                        ),
                        title: Text('Moderate Thinness'),
                        trailing: Text('16 - 17'),
                      ),
                    ),
                    Container(
                      color: third,
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.squareFull,
                          color: Colors.brown,
                          size: 20.0,
                        ),
                        title: Text('Mild Thinness'),
                        trailing: Text('< 17 - 18.5'),
                      ),
                    ),
                    Container(
                      color: fourth,
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.squareFull,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                        title: Text('Normal'),
                        trailing: Text('18.5 - 25'),
                      ),
                    ),
                    Container(
                      color: fifth,
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.squareFull,
                          color: Colors.orange,
                          size: 20.0,
                        ),
                        title: Text('Overweight'),
                        trailing: Text('25 - 30'),
                      ),
                    ),
                    Container(
                      color: sixth,
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.squareFull,
                          color: Colors.red.shade400,
                          size: 20.0,
                        ),
                        title: Text('Obese Class I'),
                        trailing: Text('30 - 35'),
                      ),
                    ),
                    Container(
                      color: seventh,
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.squareFull,
                          color: Colors.red.shade500,
                          size: 20.0,
                        ),
                        title: Text('Obese Class II'),
                        trailing: Text('35 - 40'),
                      ),
                    ),
                    Container(
                      color: eighth,
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.squareFull,
                          color: Colors.red.shade600,
                          size: 20.0,
                        ),
                        title: Text('Obese Class III'),
                        trailing: Text('> 40'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                 builder: (context) => TipsPage()
                ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 30.0,
                height: 44.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF5F786C),
                ),
                child: Text(
                  'Tips for Maintaining a Healthy BMI',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: 'OpenSansL',
                      fontWeight: FontWeight.bold
                      ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
        ],
      )),
    );
  }
}
