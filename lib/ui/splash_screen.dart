import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:jazz_app/ui/bottom_navigation_ui/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  late GifController _controller;

  @override
  void initState(){
    _controller = GifController(vsync: this);
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gif(image: const AssetImage('images/sadiq_group.gif'),
            // controller: _controller,
            //   autostart: Autostart.once,
            //   width: 200,
            //   height: 200,
            //   duration: const Duration(seconds: 3),
            // ),

           Image.asset('assets/images/sadiq_group_logo.jpg', width: 200, height: 200,),
           SizedBox(height: 200),
           CircularProgressIndicator(strokeAlign: -3,),
          ],
        ),
      )
    );
  }
}

