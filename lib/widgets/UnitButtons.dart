import 'package:flutter/material.dart';
class UnitButtons extends StatelessWidget {
  UnitButtons({this.unitVal, this.unitName, this.increment, this.decrement});
  final Function increment;
  final Function decrement;
  final String unitName;
  final unitVal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              unitName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0, color: Colors.white, fontFamily: 'OpenSansR'),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => decrement(),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFFFFFFF),
                    radius: 14.0,
                    child: Icon(Icons.remove,color: Colors.black,),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 38.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF4CA58E),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                   '$unitVal',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'OpenSansR',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () => increment(),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFFFFFFF),
                    radius: 14.0,
                    child: Icon(Icons.add,color: Colors.black,),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}