import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({super.key, required this.icon,required this.text});

  final IconData icon;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(icon, color: Colors.red.shade900,),
          SizedBox(width: 10,),
          Text('$text'),
        ],
      ),
    );
  }
}
