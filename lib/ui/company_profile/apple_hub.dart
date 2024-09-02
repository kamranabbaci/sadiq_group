import 'package:flutter/material.dart';

class AppleHub extends StatelessWidget {
  const AppleHub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome - Apple Hub',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Image.asset('assets/images/apple_hub_logo.jpg', width: 150, height: 150,),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: 'APPLE HUB ELECTRONCIS ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900, color: Color(0xFF231e46)),
                  children: const <TextSpan>[
                    TextSpan(text: 'TRADING LLC', style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFFb70e0b))),
                    //TextSpan(text: ' OF COMPANIES ', style: TextStyle(color: Color(0xFF231e46))),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              // Container(
              //     padding: EdgeInsets.all(15),
              //     decoration: BoxDecoration(
              //       border: Border(
              //         left: BorderSide(color: Colors.red.shade900, width: 2),
              //       ),
              //     ),
              //     child: Text('Sadiq group of companies is a dynamic and aspiring business corporation with Interests.', style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xFF231e46)))
              // ),

              // SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'Before you spend money on buying a new Apple product, remember to explore our exciting offers to get the best out of a reasonable investment. At Apple Hub, we are committed to providing the latest and newly launched tech advancement of Apple electronics ranging from iPhones, MacBook’s, iPads and smart accessories to Apple Trade-in. Working since 2016, our business has prospered from the very first foundation laid in UAE to the entire South Asia, Europe, and Gulf with offices prominently in Singapore, Malaysia, Sirilanka, Nepal, India and many others. As a credible reseller, we ensure that every purchase is a worthwhile investment for our core values are quality, trust & integrity and customer satisfaction.'),

              SizedBox(height: 20,),

              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('User Friendly Shopping', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xFF231e46)))
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'Our user-friendly website offers a convenient browsing interface for online shopping of products along with secure payment options and reliable shipping services that are unambiguous and practical to use. Every product is accompanied by detailed descriptions and high-resolution images for a better user experience.'),

              SizedBox(height: 20,),

              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('Customer Care Service', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xFF231e46)))
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'To ensure a better shopping experience, the customer service support team is dedicated to providing assistance and guidance in the purchase, troubleshooting and rest of technical queries. Begin your journey with us and let us know your highly valuable feedback.'),

              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
