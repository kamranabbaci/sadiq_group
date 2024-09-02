import 'package:flutter/material.dart';

class SadiqResort extends StatelessWidget {
  const SadiqResort({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome - Sadiq Resort',
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
              Image.asset('assets/images/sadiq_resort_logo.png', width: 150, height: 150,),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: 'SADIQ RESORT ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900, color: Color(0xFF231e46)),
                  children: const <TextSpan>[
                    TextSpan(text: 'LUXURY HERE', style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFFb70e0b))),
                    //TextSpan(text: ' OF COMPANIES ', style: TextStyle(color: Color(0xFF231e46))),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'A sanctuary that’s perfectly a manifestation of your exciting imagination to dwell on for a respite. Based in Pakistan, this seven-star resort is embarked on a successful struggle for offering an unusual experience of a relaxing escape, an adventurous getaway and a sentimental oasis since 2021. Certainly, this fascinating settlement blended with the warmth of our hospitality will take you off the day-to-day routine into a captivating scenery to reconnect with nature.'),

              SizedBox(height: 20,),

              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('Lodging & Amenities', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xFF231e46)))
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'Stepping into the world of tranquility, imbue yourself with the ultimate relaxation of our comfortable accommodation. Our resort is home to a range of elegantly designed rooms, suites, desert activities, dining & bars and packages for events for every budget. Each accommodation is carefully drawn up to offer striking views of the surrounding landscapes and is equipped with modern amenities to ensure your stay is nothing short of exceptional.'),

              SizedBox(height: 20,),

              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('Culinary Delights', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xFF231e46)))
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'At our world-class restaurant "Al Hadheerah", our talented chefs blend local flavors with international cuisine to create a diverse menu that caters to all tastes. Savor delectable dishes made from fresh and locally sourced ingredients while enjoying a soothing view of the starry sky at night or the serene ambiance of dunes in the daytime. Unwind with a refreshing cocktail at our cozy bars and lounges, where every sip is a celebration of the good life.'),

              SizedBox(height: 20,),

              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('Book Your Escape To Serenity!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xFF231e46)))
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'Plan your dream vacation today and experience the epitome of luxury and relaxation at Sadiq Resort. Whether you\'re seeking adventure or a blissful retreat, our resort offers the perfect haven for every traveler. Begin your journey by making a reservation or contacting our friendly team for further information. We can\'t wait to welcome you!'),

              SizedBox(height: 20,),

              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('Explore Nature\'s Playground', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xFF231e46)))
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'For the discerning souls, Sadiq Resort offers stimulating activities in the desert. Give a shot to riding with fellows and relish the stunning views of flying sand. Let the desert\'s magic captivate you at our incredible sanctuary.'),

              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
