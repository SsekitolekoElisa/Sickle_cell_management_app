import 'package:flutter/material.dart';
// import 'package:sickle_cell_app1/medicine.dart';
// import 'package:sickle_cell_app1/nutrition.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:sickle_cell_app1/main.dart';

// void main() {
//   runApp(const MaterialApp(
//     title: 'Image Slider',
//     debugShowCheckedModeBanner: false,
//     home: Rootpage(),
//   ));
// }

class BloodTransfusionRecord extends StatefulWidget {
  const BloodTransfusionRecord({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BloodTransfusionRecordState createState() => _BloodTransfusionRecordState();
}

class _BloodTransfusionRecordState extends State<BloodTransfusionRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Blood Transfusion Record'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.group), label: 'Comuni'),
          NavigationDestination(icon: Icon(Icons.medication), label: 'Plan'),
          NavigationDestination(
              icon: Icon(Icons.support), label: 'Support Group'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
       
      ),
    );
  }
}
