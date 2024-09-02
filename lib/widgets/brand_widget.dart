import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({super.key, required this.logoPath, required  this.companyName, required this.onPressed});

  final String logoPath;
  final String companyName;
  final Widget Function(BuildContext context) onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      elevation: 40,
      shadowColor: Colors.black,
      color: Color(0xFF231e46),
      child: SizedBox(
        width: 200,
        height: 350,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipPath(
                clipper: ShapeBorderClipper(shape: const CircleBorder()),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(logoPath,
                  height: 150.0,
                  width: 150.0,
                  fit: BoxFit.fill,
                ),
              ),

              const SizedBox(
                height: 10,
              ), //SizedBox
              Text(
                '$companyName',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 20,),

              SizedBox(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> onPressed(context)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      children: const [
                        Icon(Icons.touch_app),
                        Text('Visit')
                      ],
                    ),
                  ),
                ),
              )
            ],
          ), //Column
        ), //Padding
      ), //SizedBox
    );
  }
}
