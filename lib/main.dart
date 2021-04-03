import 'package:bmicalc/provider/calcProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Hompage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      builder:(context) => CalcProvider(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
        
        home: Homepage(),
        
      ),
    );
  }
}