import 'package:flutter/material.dart';
import 'package:jazz_app/widgets/offer_card_widget.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({super.key});

  @override
  State<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  List<Offer> offers = [
    //'Package Name',Validity,Price,'On-net','Of-Net',SMS,GBs Data, Comments
    Offer('Monthly X', 'Monthly', 2100, 3000, 1000, '3000', '200 GBs',
        '100 GB Tamasha, YT, TikTok', '*7733*2#'),
    Offer('Monthly Freedom', 'Monthly', 2000, 3000, 750, '3000', '100 GBs', '', '*733*2#'),
    Offer('Monthly Max', 'Monthly', 1800, 3000, 500, '3000', '50 GBs', '', '*708*2#'),
    Offer('Monthly Premium', 'Monthly', 1600, 3000, 500, '3000', '25 GBs', '', '*2000*2#'),
    Offer('Monthly Star', 'Monthly', 1400, 3000, 500, '3000', '20 GBs', '', '*430*2#'),
    Offer(
        'New Monthly Super', 'Monthly', 1200, 3000, 300, '3000', '15 GBs', '', '*760*2#'),
    Offer('Monthly Super Duper', 'Monthly', 1150, 3000, 300, '3000', '10 GBs',
        '', '*706*2#'),
    Offer('Monthly Video & Social', 'Monthly', 1000, 3000, 300, '3000',
        '30 GBs', '', '*719*2#'),

    Offer('Weekly X', 'Weekly', 600, 1000, 5000, '1000', '100 GBs', '', '*7737*2#'),
    Offer('Weekly Freedom', 'Weekly', 580, 1000, 300, '1000', '50 GBs', '', '*737*2#'),
    Offer('Weekly Max', 'Weekly', 550, 1000, 150, '1000', '30 GBs', '', '*506*2#'),
    Offer('Weekly Star', 'Weekly', 500, 1000, 150, '1000', '20 GBs', '', '*508*2#'),
    Offer('New Weekly Super', 'Weekly', 500, 1000, 150, '1000', '15 GBs', '', '*525*2#'),
    Offer('Weekly Super', 'Weekly', 480, 1000, 120, '1000', '10 GBs', '', '*505*2#'),
    Offer('Weekly Premium Plus', 'Weekly', 350, 1000, 100, '1000', '5 GBs', '', '*117*47*2#'),
    Offer('Weekly AIO', 'Weekly', 320, 1000, 90, '1000', '3 GBs', '', '*700*2#'),
    //Offer('Weekly WFH', 'Weekly', 200, 5000, 0, '1000', '12', '*117*14*2#'),

    Offer('Weekly SMS', 'Weekly', 40, 0, 0, '1500', '25 MBs', '', '*101*1*07*2#'),

    Offer('Monthly Social Extreme', 'Monthly', 1000, 3000, 300, '3000',
        '30 GBs', '30 GB TikTok, YT & Social Tamasha, FB, WA', '*719*2#'),
    Offer('Monthly Video & Social', 'Monthly', 600, 500, 100, '2000', '20 GBs',
        '20 GB TikTok, YT & Social Tamasha, FB, WA', '*625*2#'),
    Offer('Infinity Social', 'Monthly', 450, 300, 50, '1000', '15 GBs',
        '15 GB YT & Social FB, WA, IMO', '*620*2#'),
    Offer('Monthly Social Plus', 'Monthly', 400, 300, 50, '1000', '10 GBs',
        '10 GB Social IMO, FB, WA', '*617*2#'),
    Offer('Mahana Bachat', 'Monthly', 400, 300, 50, '1000', '6 GBs',
        '6 GB Social IMO, WA', '*614*2#'),
    Offer('Monthly Mega Plus', 'Monthly', 1000, 0, 0, '0', '15 GBs', '', '*117*30*2#'),
    Offer('Infinity Browser', 'Monthly', 400, 0, 0, '0', '3 GBs', '', '*709*2#'),
    Offer('Monthly Free Fire', 'Monthly', 280, 0, 0, '0', '10 GBs',
        '9 GB Free Fire & 70 Diamonds', '*686*2#'),

    Offer('Weekly Extreme', 'Weekly', 120, 0, 0, '0', '50 GBs', '12 am - 9 am', '*117*1*2#'),
    Offer('Weekly PUBG', 'Weekly', 70, 0, 0, '0', '3 GBs', 'PUBG only', '*670*2#'),

    Offer(
        'Monthly Gupshup Plus', 'Monthly', 700, 3000, 300, '3000', '0 GB', '', '*718*2#'),
    Offer('Monthly Gupshup', 'Monthly', 550, 2000, 0, '2000', '0 GB', '', '*717*2#'),
    Offer(
        'Weekly Gupshup Plus', 'Weekly', 200, 1000, 60, '1500', '100 MBs', '', '*407*2#'),

    Offer('3 Day Gupshup Plus', '3 Days', 80, 1000, 10, '1000', '0 MBs', '', '*356*2#'),
    Offer('3 Day Max', '3 Days', 90, 1000, 10, '1000', '1 GB', '', '*631*2#'),

    Offer('15 - D AIO', '15 Days', 700, 2500, 250, '2500', '10 GBs', '', '*515*2#'),
    Offer('Infinity Gupshup', '90 Days', 150, 120, 50, '1000', '0 MBs', '', '*710*2#'),
  ];

  String selectedFilterValidity = 'All';
  List<String> filterOptionsValidity = [
    'All',
    'Monthly',
    'Weekly',
    '15 Days',
    '3 Days',
    '90 Days'
  ];

  String selectedSortBy = 'High to Low';
  List<String> sortByOptions = ['Low to High', 'High to Low'];

  List<Offer> get filteredOffers {
    if (selectedFilterValidity == 'All') {
      return offers.toList()
        ..sort((a, b) => selectedSortBy == 'Low to High'
            ? a.price.compareTo(b.price)
            : b.price.compareTo(a.price));
    } else {
      return offers
          .where((offer) => offer.validity == selectedFilterValidity)
          .toList()
        ..sort((a, b) => selectedSortBy == 'Low to High'
            ? a.price.compareTo(b.price)
            : b.price.compareTo(a.price));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome - Sadiq Communication',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red.shade900,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Validity',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 2),
                  DropdownButton<String>(
                    //elevation: 20,
                    //isDense: true,
                    padding: EdgeInsets.all(12),
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 16,
                    ),
                    underline: Container(
                      height: 2,
                      color: Colors.red.shade900,
                    ),
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                    value: selectedFilterValidity,
                    items: filterOptionsValidity.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedFilterValidity = newValue!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red.shade900,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.compare_arrows,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 2),
                  DropdownButton<String>(
                    padding: EdgeInsets.all(12),
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 16,
                    ),
                    underline: Container(
                      height: 2,
                      color: Colors.red.shade900,
                    ),
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                    focusColor: Colors.white,
                    value: selectedSortBy,
                    items: sortByOptions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedSortBy = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredOffers.length,
                itemBuilder: (context, index) {
                  final offer = filteredOffers[index];
                  return OfferCardWidget(offerData: offer);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Offer {
  final String name;
  final String validity;
  final int price;
  final int onnet_minutes;
  final int ofnet_minutes;
  final String sms;
  final String gbs;
  final String comments;
  final String activationCode;

  Offer(this.name, this.validity, this.price, this.onnet_minutes,
      this.ofnet_minutes, this.sms, this.gbs, this.comments, this.activationCode);
}


