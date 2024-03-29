import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'lunguage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 1),(){
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(
          fullscreenDialog: false,
          builder: (context) {
            return const Lunguage();
          },
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/img/app icon.webp",height: 100,width: 100,fit: BoxFit.fill),
      ),
    );

  }
}


