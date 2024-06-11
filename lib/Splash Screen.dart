import 'package:flutter/material.dart';
import 'Constant/Constant Widget.dart';
import 'StopWatch_Page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StopWatchPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BackGroundGradient,
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 4.0,
          ),
        ),
      ),
    );
  }
}
