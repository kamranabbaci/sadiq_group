import 'package:flutter/material.dart';
import 'package:jazz_app/ui/about_us.dart';
import 'package:jazz_app/ui/bottom_navigation_ui/about_us_screen.dart';
import 'package:jazz_app/ui/bottom_navigation_ui/contact_us.dart';
import 'package:jazz_app/ui/bottom_navigation_ui/home.dart';
import 'package:jazz_app/ui/bottom_navigation_ui/our_brands.dart';
import 'package:jazz_app/ui/company_profile/packages_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  List screenList = [
    const Home(),
    const AboutUsScreenSingleFlow(),
    const OurBrands(),
    const ContactUs(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
      //print(currentIndex);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome - Sadiq Group', style: TextStyle(color: Colors.white, fontSize: 14),),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red.shade900,
          actions: [

            IconButton(onPressed: (){
              setState(() {
                currentIndex = 3;
              });
            },
                icon: Icon(Icons.calendar_today_outlined),
              tooltip: 'Book a Meeting',
            ),
            ],
          ),

        body: screenList[currentIndex],

        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(color: Colors.red, spreadRadius: 2, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.red.shade900, //Selected Icon color. Overrides primary Color
                  showUnselectedLabels: true,
                  unselectedLabelStyle:
                  const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                  selectedLabelStyle:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

                  unselectedIconTheme: const IconThemeData(color: Colors.grey),
                  selectedIconTheme: const IconThemeData(color: Colors.white),
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_filled,),
                        label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.web_asset),
                        label: 'About Us'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.branding_watermark),
                        label: 'Our Brands'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.contact_support_outlined),
                        label: 'Contact Us'),

                    ],


                  currentIndex: currentIndex,
                  selectedItemColor: Colors.white,
                  onTap: _onItemTapped,
                  elevation: 5
              ),
            )
        )
    );
  }
}
