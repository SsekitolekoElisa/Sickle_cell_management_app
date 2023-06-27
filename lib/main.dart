import 'package:flutter/material.dart';
// import 'package:sickle_cell_app1/medicine.dart';
import 'package:sickle_cell_app1/welcome_page.dart';


void main() {
  runApp(const Lee());
}
class Lee extends StatelessWidget {
  const Lee({super.key});

  @override 
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    home: const SplashScreen(),  
    );
  }
}
class Rootpage extends StatefulWidget {
  const Rootpage({super.key});

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Sickle Cell App'),
      // ),
      body: SplashScreen(),
      // bottomNavigationBar: NavigationBar(destinations: const [
      //  NavigationDestination(icon:  Icon(Icons.home), label: 'Home'), 
      //         NavigationDestination(icon:  Icon(Icons.group), label: 'Comuni'),
      //                NavigationDestination(icon:  Icon(Icons.medication), label: 'Plan'),
      //                       NavigationDestination(icon:  Icon(Icons.support), label: 'Support Group'),
      //                              NavigationDestination(icon:  Icon(Icons.person), label: 'Profile'),
      // ],
      // onDestinationSelected: (int index){
      //   setState((){
      //     currentPage = index;
      //   });
      // },
      // selectedIndex: currentPage,
      // ),
    );
  }
}