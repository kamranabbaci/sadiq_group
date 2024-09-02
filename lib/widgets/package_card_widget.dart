import 'dart:convert';

import 'package:flutter/material.dart';
class PackageCardWidget extends StatelessWidget {

  const PackageCardWidget({super.key, required this.packageData});
  final List packageData;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 180,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.red.shade900,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/jazz_logo.png', width: 20, height: 20,),
                    SizedBox(width: 10,),
                    Text(packageData[0], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    SizedBox(width: 20,),
                    Text('Rs. ${packageData[2]}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ],
                ),
                Divider(color: Colors.white,),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.data_usage, color: Colors.white,),
                        SizedBox(height: 5,),
                        Text(packageData[5], style: TextStyle(color: Colors.white),),

                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Icon(Icons.call, color: Colors.white,),
                        SizedBox(height: 5,),
                        Text(packageData[3], style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Icon(Icons.message, color: Colors.white,),
                        SizedBox(height: 5,),
                        Text(packageData[4], style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 20,),

                    Expanded(
                      child: Text('\n* ${packageData[5]} internet data, '
                          '${packageData[3]} all network calls and '
                          '${packageData[4]} sms', style: TextStyle(fontSize: 12, color: Colors.white),),
                    )

                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
