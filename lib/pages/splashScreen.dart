import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _text = "Scheduling Tool";
  String _subtext = "Scheduling made simple";
  int _counter = 0;
  int _nextcounter = 0;
  bool _display = false;
  late Timer _timer;

  double screensLowSize(BuildContext context) {
    return min(
        MediaQuery.of(context).size.height, MediaQuery.of(context).size.width);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    _timer = Timer(
        Duration(milliseconds: 100),
        () => setState(() {
              if (_counter < _text.length) {
                _counter += 1;
              } else {
                _nextcounter += 1;
                if (_counter + _nextcounter == _text.length + 3) {
                  _display = true;
                }
                if (_counter + _nextcounter == _text.length + 9) {
                  Navigator.popAndPushNamed(context, "/home");
                }
              }
            }));

    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/logo.png',
                  height: screensLowSize(context) * 0.3,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screensLowSize(context) * 0.05,
                  ),
                  Text(
                    _text.substring(0, _counter),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: screensLowSize(context) * 0.1,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: screensLowSize(context) * 0.03,
                  ),
                  Text(
                    _display ? _subtext : "",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: screensLowSize(context) * 0.03,
                        letterSpacing: 1),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
