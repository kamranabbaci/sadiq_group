import 'package:flutter/material.dart';
import 'package:jazz_app/ui/company_profile/apple_hub.dart';
import 'package:jazz_app/ui/company_profile/pooja_fashion.dart';
import 'package:jazz_app/ui/company_profile/sadiq_resort.dart';
import 'package:jazz_app/ui/company_profile/super_store.dart';
import 'package:jazz_app/ui/company_profile/packages_screen.dart';
import '../../widgets/brand_widget.dart';
import '../company_profile/kausar_communication.dart';

class OurBrands extends StatelessWidget {
  const OurBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        primary: false,
        //padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        children: [
          BrandWidget(
              logoPath: 'assets/images/apple_hub_logo.jpg',
              companyName: 'Apple Hub',
              onPressed: (context) => AppleHub(),
          ),
          BrandWidget(
              logoPath: 'assets/images/sadiq_resort_logo.png',
              companyName: 'Sadiq Resort',
              onPressed: (context) => SadiqResort(),
          ),
          BrandWidget(
              logoPath: 'assets/images/pooja_fashion_logo.jpg',
              companyName: 'Pooja\'s Fashon',
              onPressed: (context) => PoojaFashion(),
          ),
          BrandWidget(
              logoPath: 'assets/images/kausar_communication_logo.jpeg',
              companyName: 'Al-Kausar Communication',
              onPressed: (context) => KausarCommunication(),
          ),
          BrandWidget(
              logoPath: 'assets/images/sadiq_store_logo.jpg',
              companyName: 'Sadiq Super Store',
              onPressed: (context) => SuperStore(),
          ),
          BrandWidget(
              logoPath: 'assets/images/sadiq_communication_logo.jpeg',
              companyName: 'Sadiq Communication',
              onPressed: (context) => PackagesScreen(),
          ),
        ],
      ),
    );
  }
}
