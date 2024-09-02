import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jazz_app/ui/company_profile/packages_screen.dart';
class OfferCardWidget extends StatelessWidget {

  const OfferCardWidget({super.key, required this.offerData});
  final Offer offerData;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            height: 140,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.red.shade900,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/jazz_logo.png', width: 20, height: 20,),
                    SizedBox(width: 10,),
                    Text(offerData.name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    SizedBox(width: 20,),
                    Text('Rs. ${offerData.price}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ],
                ),
                Divider(color: Colors.white,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.data_usage, color: Colors.white, size: 20,),
                        SizedBox(height: 5,),
                        Text(offerData.gbs as String, style: TextStyle(color: Colors.white, fontSize: 12),),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Icon(Icons.call, color: Colors.white, size: 20,),
                        SizedBox(height: 5,),
                        Text('${offerData.onnet_minutes} + ${offerData.ofnet_minutes}', style: TextStyle(color: Colors.white, fontSize: 12),),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Icon(Icons.message, color: Colors.white, size: 20,),
                        SizedBox(height: 5,),
                        Text(offerData.sms, style: TextStyle(color: Colors.white, fontSize: 12),),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        children: [
                          if(offerData.comments == '')
                            Text('\n* ${offerData.gbs} data, '
                              '${offerData.onnet_minutes} On-net, ${offerData.ofnet_minutes} Off-net minutes & '
                              '${offerData.sms} SMS', style: TextStyle(fontSize: 10, color: Colors.white),),
                          if(offerData.comments != '')
                            Text('* ${offerData.gbs} (${offerData.comments}), ${offerData.onnet_minutes} On-net, ${offerData.ofnet_minutes} Off-net minutes & ${offerData.sms} SMS', style: TextStyle(fontSize: 10, color: Colors.white),),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
      onTap: () {
        _showOfferDetails(context, offerData);
      },
    );
  }

  void _showOfferDetails(BuildContext context, Offer offer) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red.shade900,
          elevation: 50,
          shadowColor: Colors.red.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Text('Offer Activation', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(height: 10,),
              Text('To activate dial: ${offer.activationCode}', style: TextStyle(color: Colors.white),),
              //Text('Offer Description: ${offer.description}'),
              // ... other offer details
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok', style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
