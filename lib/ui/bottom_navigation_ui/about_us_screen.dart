import 'package:flutter/material.dart';
class AboutUsScreenSingleFlow extends StatelessWidget {
  const AboutUsScreenSingleFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Image.asset('assets/images/sadiq_group_logo.jpg', width: 150, height: 150,),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: 'WELCOME TO ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900, color: Color(0xFF231e46)),
                  children: const <TextSpan>[
                    TextSpan(text: 'SADIQ GROUP', style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFFb70e0b))),
                    TextSpan(text: ' OF COMPANIES ', style: TextStyle(color: Color(0xFF231e46))),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('Sadiq group of companies is a dynamic and aspiring business corporation with Interests.', style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xFF231e46)))
              ),
              SizedBox(height: 20,),
              Text(
                  textAlign: TextAlign.justify,
                  'Sadiq Group of Companies is a thriving business Corporation working in the realm of Telecommunications, Construction, Power, Hotels & Resorts, Electronics, Fashion, Rentals, Services, and Trading. The company was founded back into 2016 whereby the acclamation led to further development of business namely Apple Hub Electronics Trading LLC, Sadiq Super Store, Pooja’s Fashion, Sadiq Resort, and Al-Kausar Communications in GCC, Europe and all over Asia. The successful business of the Sadiq group has a motto of creating extraordinary experiences and bringing quality to lifestyle by blending comfort with style.'),
              SizedBox(height: 20,),

              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('OUR MISSION', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xFF231e46)))
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'Our mission is to continue provide excellent services to our clients with the use of our core values. We highly value our materials, team and our clients. We cater all types of product materials and we assure to give the best price and deals to our dear customers. \n'
                      'To be able to work with this mission, we always have teamwork and stability in making connections and opportunities in an efficient and ethical ways. In overall world, we assure that we will assist and give you high quality services where in you will continue trusting us your product materials.'),

              SizedBox(height: 20,),

              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('CEO MESSAGE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xFF231e46)))
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'Sadiq Group of companies is preserving a rich tradition of imparting quality services in different areas. As the CEO, it is a matter of great satisfaction for me that our acclaimed services since the successful progress in 2016 have led us to establish several offices in different countries for hospitality, technology, electronics, design, and construction services. Bearing the fruit of our consistent struggle, We are having clients in GCC, Europe and all over Asia. This huge expansion is owing to our core values; integrity, transparency, and exemplary leadership for it is a place where diversity and gender equality are highly embraced. I am confident that our constant efforts will continue manifesting in the form of outclass courtesies with visionary brains great devotion.'),

              SizedBox(height: 20,),
              Text('CEO & Founder'),
              Text('Muhammad Irfan Ali', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF231e46)),),

              SizedBox(height: 20,),


            ],
          ),
        ),
      ),
    );
  }
}
