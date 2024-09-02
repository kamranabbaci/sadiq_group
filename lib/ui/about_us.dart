import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:jazz_app/ui/dashboard.dart';
import 'package:jazz_app/ui/company_profile/packages_screen.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {

  final List <PageViewModel> listPagesViewModel = [
    PageViewModel(
      title: "WELCOME TO \nSADIQ COMUUNICATION",
      body: 'Sadiq communication is a dynamic and aspiring business corporation with Interests.',
      image: Center(
        child: Image.asset('assets/images/sadiq_communication_logo.jpeg', width: 200, height: 200,),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w800),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.0,),
      ),
    ),
    PageViewModel(
      title: "8 Years of experience in consulting service",
      body: "Sadiq Group of Companies is a thriving business Corporation working in the realm of "
      "Telecommunications, Construction, Power, Hotels & Resorts, Electronics, Fashion, Rentals, "
      "Services, and Trading. The company was founded back into 2016 whereby the acclamation led to "
      "further development of business namely Apple Hub Electronics Trading LLC, Sadiq Super Store, "
      "Pooja’s Fashion, Sadiq Resort, and Al-Kausar Communications in GCC, Europe and all over Asia. "
      "The successful business of the Sadiq group has a motto of creating extraordinary experiences and "
      "bringing quality to lifestyle by blending comfort with style.",
      image: const Center(
        child: Text("👋", style: TextStyle(fontSize: 100.0)),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.red, fontSize: 20),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 10.0),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(

        pages: listPagesViewModel,
        showSkipButton: true,
        showNextButton: true,
        next: Icon(Icons.navigate_next),
        skip: const Text("Skip"),
        done: const Text("Proceed >>>"),
        onDone: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=> PackagesScreen()));
        },
        onSkip: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=> PackagesScreen()));
        },
    );
  }
}
