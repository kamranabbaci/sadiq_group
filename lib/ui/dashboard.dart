import 'package:data_filters/data_filters.dart';
import 'package:flutter/material.dart';
import '../widgets/package_card_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  List<int>? filterIndex;

  List <List> data = [
    //['Name', 'Validity', 'Price', 'Minutes', 'SMS', 'MBs']
    ['Hello Offer 1', 'Weekly', '300', '1000', '1000', '5000'],
    ['Hello Offer 2', 'Monthly', '800', '2000', '5000', '10000'],
    ['Hello Offer 3', 'Weekly', '400', '1500', '2000', '10000'],
    ['Hello Offer 5', 'Monthly', '1500', '5000', '5000', '20000'],
    ['Hello Offer 6', 'Weekly', '500', '5000', '5000', '20000'],
    ['Hello Offer 7', 'Monthly', '200', '5000', '5000', '20000'],
    ['Hello Offer 8', 'Monthly', '2000', '10000', '5000', '40000'],
  ];

  List <String> title = ['Name', 'Validity', 'Price', 'Minutes', 'SMS', 'MBs'];

  List <List> data2 = [
    //['Name', 'Validity', 'Price', 'Minutes', 'SMS', 'MBs']
    ['Hello Offer 1', 'Weekly1', '300'],
    ['Hello Offer 2', 'Monthly1', '800'],
    ['Hello Offer 3', 'Weekly2', '400'],
    ['Hello Offer 5', 'Monthly2', '1500'],
    ['Hello Offer 6', 'Weekly3', '500'],
    ['Hello Offer 7', 'Monthly3', '200'],
    ['Hello Offer 8', 'Monthly4', '2000'],
  ];

  List <String> title2 = ['Name', 'Validity', 'Price'];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome - Sadiq Group"),
      ),
      body: Column(
        children: [
          DataFilters(
            data: data,
            /// pass your filter title here
            filterTitle: title,
            /// enable animation
            showAnimation: true,
            /// get list of index of selected filter
            recent_selected_data_index: (List<int>? index) {
              setState(() {
                filterIndex = index;
              });
            },
            /// styling
            style: FilterStyle(
              buttonColor: Colors.red.shade900,
              buttonColorText: Colors.white,
              filterBorderColor: Colors.grey,
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: data.length,
                itemBuilder: (itemBuilder,i){
                if(filterIndex == null || filterIndex!.contains(i)) {
                  return PackageCardWidget(packageData: data[i]);
                }
                return null;
            
            }),
          ),
        ],
      ),
    );
  }
}
