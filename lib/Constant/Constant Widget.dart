import 'package:flutter/material.dart';


class CustomColors {
  static Color primaryTextColor = Colors.white;
  static Color dividerColor = Colors.white54;
  static Color pageBackgroundColor = Color(0xFF2D2F41);
  static Color menuBackgroundColor = Color(0xFF242634);

  static Color clockBG = Color(0xFF404040);
  // static Color clockBG = Color(0xff89895d);
  static Color clockOutline = Color(0xFFEAECFF);
  static Color? secHandColor = Color(0xffb3ffff);
  static Color minHandStatColor = Color(0xFFb3ffff);
  static Color minHandEndColor = Color(0xFF77DDFF);
  static Color hourHandStatColor = Color(0xFFffffff);
  static Color hourHandEndColor = Color(0xFFEA74AB);
}


const BackGroundGradient = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment(0.8, 1),
      colors: <Color>[
        Color(0xff89895d),
        Color(0xffccfff5),
      ],
    ));



Widget textButton(String text, IconData icon, Function() onPress) {
  return Container(
    width: 100,
    height: 42,
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,

          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onPress,
        splashColor: Color(0xff3d3d29),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, color: Color(0xff3d3d29)),
              SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                    color: Color(0xff3d3d29)
                ),
              ), // text
            ],
          ),
        ),
      ),
    ),
  );
}
