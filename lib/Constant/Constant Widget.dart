import 'package:flutter/material.dart';

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
      color: Color(0xffc3c388),
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


// Widget textButton(String text, IconData icon , Function () onpress){
//   return
//     Container(
//       width: 100, // button width
//       height: 42, // button height
//       decoration: BoxDecoration(
//         color: Color(0xffc3c388), // button color
//         borderRadius: BorderRadius.circular(16), // rounded corners
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             blurRadius: 4,
//             offset: Offset(2, 2),
//           ),
//         ],
//       ),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(16),
//         onTap: onpress, // button pressed
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Icon(icon), // icon
//               SizedBox(width: 8), // spacing between icon and text
//               Text(text,style:TextStyle(fontWeight: FontWeight.bold),), // text
//             ],
//           ),
//         ),
//       ),
//     );
// }