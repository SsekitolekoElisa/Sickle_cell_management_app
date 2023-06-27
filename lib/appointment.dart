import 'package:flutter/material.dart';
import 'package:sickle_cell_app1/add_appointment.dart';
class AppointmentList extends StatefulWidget {
  const AppointmentList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AppointmentListState createState() => _AppointmentListState();
}

class _AppointmentListState extends State<AppointmentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointment List'),
        actions: [
          IconButton(onPressed: ()
          {
            Navigator.push(context, 
            MaterialPageRoute(builder: 
            (context) => const AddAppointment(),));
          }, 
          icon:const Icon(Icons.add))
        ],
        centerTitle: true,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            
          ),
        ),
      ),
      // bottomNavigationBar: NavigationBar(
      //   destinations: const [
      //     NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      //     NavigationDestination(icon: Icon(Icons.group), label: 'Comuni'),
      //     NavigationDestination(icon: Icon(Icons.medication), label: 'Plan'),
      //     NavigationDestination(
      //         icon: Icon(Icons.support), label: 'Support Group'),
      //     NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      //   ],
       
      // ),
    );
  }
}
