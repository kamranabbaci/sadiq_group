import 'package:flutter/material.dart';

class KausarCommunication extends StatelessWidget {
  const KausarCommunication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome - Al Kausar Communication',
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
              Image.asset('assets/images/kausar_communication_logo.jpeg', width: 150, height: 150,),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: 'AL KAUSAR ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900, color: Color(0xFF231e46)),
                  children: const <TextSpan>[
                    TextSpan(text: 'COMMUNICATIONS', style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFFb70e0b))),
                    //TextSpan(text: ' OF COMPANIES ', style: TextStyle(color: Color(0xFF231e46))),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'Al-Kausar Communications is an authorized franchise of Pakistan’s leading telecommunication Network; Jazz since January 2023. Be it urban cities or remote rural areas, we ensure uninterrupted communication and internet connectivity by providing strong network coverage all around. With access to reliable network technology, you can enjoy clear voice calls, high-speed internet and satisfactory video conferencing experiences.Al-Kausar Communications is an authorized franchise of Pakistan’s leading telecommunication Network; Jazz since January 2023. Be it urban cities or remote rural areas, we ensure uninterrupted communication and internet connectivity by providing strong network coverage all around. With access to reliable network technology, you can enjoy clear voice calls, high-speed internet and satisfactory video conferencing experiences.'),

              SizedBox(height: 10,),

              Text(
                  textAlign: TextAlign.justify,
                  'In the wake of this era’s demand our communication services expand from traditional voice and data offers to o special prepaid & postpaid offers, free data bundles, texting offers, cheap internet packages and flexible offers to keep you connected with loved ones.'),


              SizedBox(height: 10,),

              Text(
                  textAlign: TextAlign.justify,
                  'Discover our diverse range of communication plans as per your specific requirements. Connect with our staff to be assisted in finding the best communication solutions or technical issues that you might encounter with our services.'),


              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
