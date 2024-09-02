import 'package:flutter/material.dart';

class PoojaFashion extends StatelessWidget {
  const PoojaFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome - Pooja\'s Fashion',
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
              Image.asset('assets/images/pooja_fashion_logo.jpg', width: 150, height: 150,),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: 'POOJA\'S ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900, color: Color(0xFF231e46)),
                  children: const <TextSpan>[
                    TextSpan(text: 'FASHION', style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFFb70e0b))),
                    //TextSpan(text: ' OF COMPANIES ', style: TextStyle(color: Color(0xFF231e46))),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Text(
                  textAlign: TextAlign.justify,
                  'Pooja’s Fashion is a flourishing fashion retailer working in India and UAE since 2021 to serve unprecedented sustainable designs specifically to Bollywood and generally to the open market. As a Bollywood fashion collaborator, we bring forth a unique collection of clothing and accessories embodying the perfect essence of Bollywood glamor and adornment. From Sarees to Lehengas and seasonal outfits to trendy casual wear, our assortment mirrors the alluring style of Bollywood stars. For general clothing, our collection consists of a wide range of exquisite items for casual wear, formal wear and party wear whereby every design is a blend of soothing shades and elegant style. Give our collection a shot and have a worthwhile shopping experience!'),

              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
