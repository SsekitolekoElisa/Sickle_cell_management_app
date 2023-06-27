import 'package:flutter/material.dart';

// ignore: camel_case_types
class Medicine_nutritionPage extends StatefulWidget {
  const Medicine_nutritionPage({super.key});

  @override
  State<Medicine_nutritionPage> createState() => _Medicine_nutritionPageState();
}

// ignore: camel_case_types
class _Medicine_nutritionPageState extends State<Medicine_nutritionPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicine and Nutrition'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          
        ),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
       NavigationDestination(icon:  Icon(Icons.home), label: 'Home'), 
              NavigationDestination(icon:  Icon(Icons.group), label: 'Comuni'),
                     NavigationDestination(icon:  Icon(Icons.medication), label: 'Plan'),
                            NavigationDestination(icon:  Icon(Icons.support), label: 'Support Group'),
                                   NavigationDestination(icon:  Icon(Icons.person), label: 'Profile'),
      ],
      onDestinationSelected: (int index){
        setState((){
          currentPage = index;
        });
      },
      selectedIndex: currentPage,
      ),
    );
  }
}

