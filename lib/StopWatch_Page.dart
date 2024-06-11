import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Constant/Constant Widget.dart';

class StopWatchPage extends StatefulWidget {
  @override
  _StopWatchPageState createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {

  late Stopwatch stopwatch;
  late Timer t;

  void handleStartStop() {
    if(stopwatch.isRunning) {
      stopwatch.stop();
    }
    else {
      stopwatch.start();
    }
  }

  String returnFormattedText() {
    var milli = stopwatch.elapsed.inMilliseconds;

    // String milliseconds = (milli % 1000).toString().padLeft(2, "0");
    String seconds = ((milli ~/ 1000) % 60).toString().padLeft(2, "0");
    String minutes = ((milli ~/ 1000) ~/ 60).toString().padLeft(2, "0");
    String hours = ((milli ~/ 1000) ~/ 3600).toString().padLeft(2, "0");

    return "$hours:$minutes:$seconds";
  }
  String milliSecondText() {
    var milli = stopwatch.elapsed.inMilliseconds;
    String milliseconds = (milli % 1000).toString().padLeft(3, "0");
    return "$milliseconds";
  }

  @override
  void initState() {
    super.initState();
    stopwatch = Stopwatch();

    t = Timer.periodic(Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BackGroundGradient,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text("TIMER",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
            Container(),


            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.all(0),
              child: Container(
                height: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xff3d3d29),
                    width: 4,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(returnFormattedText(), style: TextStyle(
                      color: Color(0xff3d3d29),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),),
                    Padding(
                      padding:  EdgeInsets.only(left: 120),
                      child: Text(milliSecondText(), style: TextStyle(
                        color: Color(0xff3d3d29),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            Container(),
            Container(),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                textButton("Start",Icons.not_started_outlined,(){stopwatch.start();}),
                textButton("Stop",Icons.stop_circle_outlined,(){stopwatch.stop();}),
                textButton("Restart",Icons.restart_alt,(){stopwatch.reset();}),

              ],
            ),
            Container(),
            Container(),


          ],
        ),
      ),
    );
  }
}