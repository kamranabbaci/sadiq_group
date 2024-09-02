import 'package:flutter/material.dart';

class SuperStore extends StatelessWidget {
  const SuperStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome - Sadiq Super Store',
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
              Image.asset('assets/images/sadiq_store_logo.jpg', width: 150, height: 150,),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: 'SADIQ SUPER ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900, color: Color(0xFF231e46)),
                  children: const <TextSpan>[
                    TextSpan(text: 'STORE', style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFFb70e0b))),
                    //TextSpan(text: ' OF COMPANIES ', style: TextStyle(color: Color(0xFF231e46))),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'With the motive of providing a vast range of quality products blended with durability and style, Sadiq Super Store is embarked on a successful journey over the last three years. Thrived from a simple shop, the store has now turned into a retail that features more than 10,000 brands undertaking appx. 52,000 products of different categories. Located in two cities (Bahawalpur and Multan) in Pakistan, all six stores are working hard to deliver quality items at a reasonable rate. To run this fastest-growing retail chain, around 1000+ employees are providing services at the stores to ensure a better user experience.'
                'At Sadiq Super Store, we not only believe in bringing you the best quality products but also the best value for money by ensuring a budget-friendly shopping experience.'),

              SizedBox(height: 20,),

              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                  ),
                  child: Text('Promotional Deals & Budget- Friendly Prices', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,color: Color(0xFF231e46)))
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'At Sadiq Super Store, we not only believe in bringing you the best quality products but also the best value for money by ensuring a budget-friendly shopping experience. Further for your incredible savings, we keep offering unbeatable promotions, discounts and special offers so every time you visit the store, you find something new and stimulating to shop. This is the reason that our customers’ strength goes beyond 700k across Pakistan.'),

              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
